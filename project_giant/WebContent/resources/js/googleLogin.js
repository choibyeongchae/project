
					function logout()
				   {
					   gapi.auth.signOut();
					   location.reload();
				   }
				   function login() 
				   {
					 var myParams = {
					   'clientid' : '505038968033-tfdkihd24cagllmskuqkq8u1tjosfaip.apps.googleusercontent.com',//본인의 id값 https://console.developers.google.com가입후 //받으면 됨
					   'cookiepolicy' : 'single_host_origin',
					   'callback' : 'loginCallback',
					   'approvalprompt':'force',
					   'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
					 };
					 gapi.auth.signIn(myParams);
				   }
					
				   function loginCallback(result)
				   {
					   if(result['status']['signed_in'])
					   {
						   var request = gapi.client.plus.people.get(
						   {
							   'userId': 'me'
						   });
						   request.execute(function (resp)
						   {
							   var email = '';
							   if(resp['emails'])
							   {
								   for(i = 0; i < resp['emails'].length; i++)
								   {
									   if(resp['emails'][i]['type'] == 'account')
									   {
										   email = resp['emails'][i]['value'];
									   }
								   }
							   }
					
							   var str = "Name:" + resp['displayName'] + "<br>";
							   str += "Image:" + resp['image']['url'] + "<br>";
							   str += "<img src='" + resp['image']['url'] + "' /><br>";
					
							   str += "URL:" + resp['url'] + "<br>";
							   str += "Email:" + email + "<br>";
							   console.log(str);
							   document.getElementById("profile").innerHTML = str;
						   });
					
					   }
					
				   }
				   function onLoadCallback()
				   {
					   gapi.client.setApiKey('AIzaSyCSBvQzyPVed8c5Hso6EI-2oL9L-8Bkduc'); //본인의 api값 https://console.developers.google.com에서 라이브러리로 이동후 //google+ API를 다운 후 받으면 됨
					   gapi.client.load('plus', 'v1',function(){});
				   }
					
					
						 (function() {
						  var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
						  po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
						  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
						})();
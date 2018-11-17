<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<title>Register</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="signup.html"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	    <div class="navbar-nav">
	      <a class="nav-item nav-link active" href="signup.html">Register<span class="sr-only">(current)</span></a>
	      <a class="nav-item nav-link" href="login.html">Login</a>
	   
	    </div>
	  </div>
	</nav>

	<div class="row">
		<div class="container card form_container">
			<form action="RegistrationServlet">
			  <div class="form-row">
			  	<div class="form-group col-md-6">
			    	<label for="name">Name</label>
			    	<input type="text" class="form-control" id="inputName" name="name" placeholder="Enter your name" required>
			  	</div>
  			    <div class="form-group col-md-6">
			      <label for="inputOrg">Organisation</label>
			      <input type="text" class="form-control" id="org" name="org" placeholder="Enter organisation name">
			    </div>
			    <div class="form-group col-md-6">
			      <label for="inputEmail4">Email</label>
			      <input type="text" class="form-control" id="inputEmail" name="email" placeholder="example@example.com" required>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="inputMobile">Mobile</label>
			      <input type="text" class="form-control" id="inputMobile" name="mob" placeholder="XXXXXXXXXX" required>
			    </div>
			

				<label class="sr-only" for="inputGroupUsername">Username</label>
				<div class="input-group mb-2 mr-sm-2">
					<div class="input-group-prepend">
					  <div class="input-group-text">@</div>
					</div>
				<input type="text" class="form-control" id="inputGroupUsername" name="usnm" placeholder="Username" required>
				</div>

			    <div class="form-group col-md-6">
			      <label for="inputPassword4">Password</label>
			      <input type="password" class="form-control" id="inputPassword"name="pass" placeholder="Password" required>
			    </div>
			    <div class="form-group col-md-6">
			      <label for="inputPassword4">Confirm Password</label>
			      <input type="password" class="form-control" id="inputPassword" name="confpass" placeholder="Password" required>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputAddress">Address</label>
			    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" >
			  </div>
			  
			  


			  <div class="form-row">
			    <div class="form-group col-md-5">
			      <label for="inputCity">City</label>
			      <select id="inputCity" class="form-control">
			        <option selected>Choose...</option>
			      
			        <option>Adilabad</option>
                    <option>Agra</option>
                    <option>Ahmedabad</option>
                    <option>Ahmednagar</option>
                    <option>Aizawl</option>
                    <option>Ajitgarh (Mohali)</option>
                    <option>Ajmer</option>
                    <option>Akola</option>
                    <option>Alappuzha</option>
                    <option>Aligarh</option>
                    <option>Alirajpur</option>
                    <option>Allahabad</option>
                    <option>Almora</option>
                    <option>Alwar</option>
                    <option>Ambala</option>
                    <option>Ambedkar Nagar</option>
                    <option>Amravati</option>
                    <option>Amreli district</option>
                    <option>Amritsar</option>
                    <option>Anand</option>
                    <option>Anantapur</option>
                    <option>Anantnag</option>
                    <option>Angul</option>
                    <option>Anjaw</option>
                    <option>Anuppur</option>
                    <option>Araria</option>
                    <option>Ariyalur</option>
                    <option>Arwal</option>
                    <option>Ashok Nagar</option>
                    <option>Auraiya</option>
                    <option>Aurangabad</option>
                    <option>Aurangabad</option>
                    <option>Azamgarh</option>
                    <option>Badgam</option>
                    <option>Bagalkot</option>
                    <option>Bageshwar</option>
                    <option>Bagpat</option>
                    <option>Bahraich</option>
                    <option>Baksa</option>
                    <option>Balaghat</option>
                    <option>Balangir</option>
                    <option>Balasore</option>
                    <option>Ballia</option>
                    <option>Balrampur</option>
                    <option>Banaskantha</option>
                    <option>Banda</option>
                    <option>Bandipora</option>
                    <option>Bangalore Rural</option>
                    <option>Bangalore Urban</option>
                    <option>Banka</option>
                    <option>Bankura</option>
                    <option>Banswara</option>
                    <option>Barabanki</option>
                    <option>Baramulla</option>
                    <option>Baran</option>
                    <option>Bardhaman</option>
                    <option>Bareilly</option>
                    <option>Bargarh (Baragarh)</option>
                    <option>Barmer</option>
                    <option>Barnala</option>
                    <option>Barpeta</option>
                    <option>Barwani</option>
                    <option>Bastar</option>
                    <option>Basti</option>
                    <option>Bathinda</option>
                    <option>Beed</option>
                    <option>Begusarai</option>
                    <option>Belgaum</option>
                    <option>Bellary</option>
                    <option>Betul</option>
                    <option>Bhadrak</option>
                    <option>Bhagalpur</option>
                    <option>Bhandara</option>
                    <option>Bharatpur</option>
                    <option>Bharuch</option>
                    <option>Bhavnagar</option>
                    <option>Bhilwara</option>
                    <option>Bhind</option>
                    <option>Bhiwani</option>
                    <option>Bhojpur</option>
                    <option>Bhopal</option>
                    <option>Bidar</option>
                    <option>Bijapur</option>
                    <option>Bijapur</option>
                    <option>Bijnor</option>
                    <option>Bikaner</option>
                    <option>Bilaspur</option>
                    <option>Bilaspur</option>
                    <option>Birbhum</option>
                    <option>Bishnupur</option>
                    <option>Bokaro</option>
                    <option>Bongaigaon</option>
                    <option>Boudh (Bauda)</option>
                    <option>Budaun</option>
                    <option>Bulandshahr</option>
                    <option>Buldhana</option>
                    <option>Bundi</option>
                    <option>Burhanpur</option>
                    <option>Buxar</option>
                    <option>Cachar</option>
                    <option>Central Delhi</option>
                    <option>Chamarajnagar</option>
                    <option>Chamba</option>
                    <option>Chamoli</option>
                    <option>Champawat</option>
                    <option>Champhai</option>
                    <option>Chandauli</option>
                    <option>Chandel</option>
                    <option>Chandigarh</option>
                    <option>Chandrapur</option>
                    <option>Changlang</option>
                    <option>Chatra</option>
                    <option>Chennai</option>
                    <option>Chhatarpur</option>
                    <option>Chhatrapati Shahuji Maharaj Nagar</option>
                    <option>Chhindwara</option>
                    <option>Chikkaballapur</option>
                    <option>Chikkamagaluru</option>
                    <option>Chirang</option>
                    <option>Chitradurga</option>
                    <option>Chitrakoot</option>
                    <option>Chittoor</option>
                    <option>Chittorgarh</option>
                    <option>Churachandpur</option>
                    <option>Churu</option>
                    <option>Coimbatore</option>
                    <option>Cooch Behar</option>
                    <option>Cuddalore</option>
                    <option>Cuttack</option>
                    <option>Dadra and Nagar Haveli</option>
                    <option>Dahod</option>
                    <option>Dakshin Dinajpur</option>
                    <option>Dakshina Kannada</option>
                    <option>Daman</option>
                    <option>Damoh</option>
                    <option>Dantewada</option>
                    <option>Darbhanga</option>
                    <option>Darjeeling</option>
                    <option>Darrang</option>
                    <option>Datia</option>
                    <option>Dausa</option>
                    <option>Davanagere</option>
                    <option>Debagarh (Deogarh)</option>
                    <option>Dehradun</option>
                    <option>Deoghar</option>
                    <option>Deoria</option>
                    <option>Dewas</option>
                    <option>Dhalai</option>
                    <option>Dhamtari</option>
                    <option>Dhanbad</option>
                    <option>Dhar</option>
                    <option>Dharmapuri</option>
                    <option>Dharwad</option>
                    <option>Dhemaji</option>
                    <option>Dhenkanal</option>
                    <option>Dholpur</option>
                    <option>Dhubri</option>
                    <option>Dhule</option>
                    <option>Dibang Valley</option>
                    <option>Dibrugarh</option>
                    <option>Dima Hasao</option>
                    <option>Dimapur</option>
                    <option>Dindigul</option>
                    <option>Dindori</option>
                    <option>Diu</option>
                    <option>Doda</option>
                    <option>Dumka</option>
                    <option>Dungapur</option>
                    <option>Durg</option>
                    <option>East Champaran</option>
                    <option>East Delhi</option>
                    <option>East Garo Hills</option>
                    <option>East Khasi Hills</option>
                    <option>East Siang</option>
                    <option>East Sikkim</option>
                    <option>East Singhbhum</option>
                    <option>Eluru</option>
                    <option>Ernakulam</option>
                    <option>Erode</option>
                    <option>Etah</option>
                    <option>Etawah</option>
                    <option>Faizabad</option>
                    <option>Faridabad</option>
                    <option>Faridkot</option>
                    <option>Farrukhabad</option>
                    <option>Fatehabad</option>
                    <option>Fatehgarh Sahib</option>
                    <option>Fatehpur</option>
                    <option>Fazilka</option>
                    <option>Firozabad</option>
                    <option>Firozpur</option>
                    <option>Gadag</option>
                    <option>Gadchiroli</option>
                    <option>Gajapati</option>
                    <option>Ganderbal</option>
                    <option>Gandhinagar</option>
                    <option>Ganganagar</option>
                    <option>Ganjam</option>
                    <option>Garhwa</option>
                    <option>Gautam Buddh Nagar</option>
                    <option>Gaya</option>
                    <option>Ghaziabad</option>
                    <option>Ghazipur</option>
                    <option>Giridih</option>
                    <option>Goalpara</option>
                    <option>Godda</option>
                    <option>Golaghat</option>
                    <option>Gonda</option>
                    <option>Gondia</option>
                    <option>Gopalganj</option>
                    <option>Gorakhpur</option>
                    <option>Gulbarga</option>
                    <option>Gumla</option>
                    <option>Guna</option>
                    <option>Guntur</option>
                    <option>Gurdaspur</option>
                    <option>Gurgaon</option>
                    <option>Gwalior</option>
                    <option>Hailakandi</option>
                    <option>Hamirpur</option>
                    <option>Hamirpur</option>
                    <option>Hanumangarh</option>
                    <option>Harda</option>
                    <option>Hardoi</option>
                    <option>Haridwar</option>
                    <option>Hassan</option>
                    <option>Haveri district</option>
                    <option>Hazaribag</option>
                    <option>Hingoli</option>
                    <option>Hissar</option>
                    <option>Hooghly</option>
                    <option>Hoshangabad</option>
                    <option>Hoshiarpur</option>
                    <option>Howrah</option>
                    <option>Hyderabad</option>
                    <option>Hyderabad</option>
                    <option>Idukki</option>
                    <option>Imphal East</option>
                    <option>Imphal West</option>
                    <option>Indore</option>
                    <option>Jabalpur</option>
                    <option>Jagatsinghpur</option>
                    <option>Jaintia Hills</option>
                    <option>Jaipur</option>
                    <option>Jaisalmer</option>
                    <option>Jajpur</option>
                    <option>Jalandhar</option>
                    <option>Jalaun</option>
                    <option>Jalgaon</option>
                    <option>Jalna</option>
                    <option>Jalore</option>
                    <option>Jalpaiguri</option>
                    <option>Jammu</option>
                    <option>Jamnagar</option>
                    <option>Jamtara</option>
                    <option>Jamui</option>
                    <option>Janjgir-Champa</option>
                    <option>Jashpur</option>
                    <option>Jaunpur district</option>
                    <option>Jehanabad</option>
                    <option>Jhabua</option>
                    <option>Jhajjar</option>
                    <option>Jhalawar</option>
                    <option>Jhansi</option>
                    <option>Jharsuguda</option>
                    <option>Jhunjhunu</option>
                    <option>Jind</option>
                    <option>Jodhpur</option>
                    <option>Jorhat</option>
                    <option>Junagadh</option>
                    <option>Jyotiba Phule Nagar</option>
                    <option>Kabirdham (formerly Kawardha)</option>
                    <option>Kadapa</option>
                    <option>Kaimur</option>
                    <option>Kaithal</option>
                    <option>Kakinada</option>
                    <option>Kalahandi</option>
                    <option>Kamrup</option>
                    <option>Kamrup Metropolitan</option>
                    <option>Kanchipuram</option>
                    <option>Kandhamal</option>
                    <option>Kangra</option>
                    <option>Kanker</option>
                    <option>Kannauj</option>
                    <option>Kannur</option>
                    <option>Kanpur</option>
                    <option>Kanshi Ram Nagar</option>
                    <option>Kanyakumari</option>
                    <option>Kapurthala</option>
                    <option>Karaikal</option>
                    <option>Karauli</option>
                    <option>Karbi Anglong</option>
                    <option>Kargil</option>
                    <option>Karimganj</option>
                    <option>Karimnagar</option>
                    <option>Karnal</option>
                    <option>Karur</option>
                    <option>Kasaragod</option>
                    <option>Kathua</option>
                    <option>Katihar</option>
                    <option>Katni</option>
                    <option>Kaushambi</option>
                    <option>Kendrapara</option>
                    <option>Kendujhar (Keonjhar)</option>
                    <option>Khagaria</option>
                    <option>Khammam</option>
                    <option>Khandwa (East Nimar)</option>
                    <option>Khargone (West Nimar)</option>
                    <option>Kheda</option>
                    <option>Khordha</option>
                    <option>Khowai</option>
                    <option>Khunti</option>
                    <option>Kinnaur</option>
                    <option>Kishanganj</option>
                    <option>Kishtwar</option>
                    <option>Kodagu</option>
                    <option>Koderma</option>
                    <option>Kohima</option>
                    <option>Kokrajhar</option>
                    <option>Kolar</option>
                    <option>Kolasib</option>
                    <option>Kolhapur</option>
                    <option>Kolkata</option>
                    <option>Kollam</option>
                    <option>Koppal</option>
                    <option>Koraput</option>
                    <option>Korba</option>
                    <option>Koriya</option>
                    <option>Kota</option>
                    <option>Kottayam</option>
                    <option>Kozhikode</option>
                    <option>Krishna</option>
                    <option>Kulgam</option>
                    <option>Kullu</option>
                    <option>Kupwara</option>
                    <option>Kurnool</option>
                    <option>Kurukshetra</option>
                    <option>Kurung Kumey</option>
                    <option>Kushinagar</option>
                    <option>Kutch</option>
                    <option>Lahaul and Spiti</option>
                    <option>Lakhimpur</option>
                    <option>Lakhimpur Kheri</option>
                    <option>Lakhisarai</option>
                    <option>Lalitpur</option>
                    <option>Latehar</option>
                    <option>Latur</option>
                    <option>Lawngtlai</option>
                    <option>Leh</option>
                    <option>Lohardaga</option>
                    <option>Lohit</option>
                    <option>Lower Dibang Valley</option>
                    <option>Lower Subansiri</option>
                    <option>Lucknow</option>
                    <option>Ludhiana</option>
                    <option>Lunglei</option>
                    <option>Madhepura</option>
                    <option>Madhubani</option>
                    <option>Madurai</option>
                    <option>Mahamaya Nagar</option>
                    <option>Maharajganj</option>
                    <option>Mahasamund</option>
                    <option>Mahbubnagar</option>
                    <option>Mahe</option>
                    <option>Mahendragarh</option>
                    <option>Mahoba</option>
                    <option>Mainpuri</option>
                    <option>Malappuram</option>
                    <option>Maldah</option>
                    <option>Malkangiri</option>
                    <option>Mamit</option>
                    <option>Mandi</option>
                    <option>Mandla</option>
                    <option>Mandsaur</option>
                    <option>Mandya</option>
                    <option>Mansa</option>
                    <option>Marigaon</option>
                    <option>Mathura</option>
                    <option>Mau</option>
                    <option>Mayurbhanj</option>
                    <option>Medak</option>
                    <option>Meerut</option>
                    <option>Mehsana</option>
                    <option>Mewat</option>
                    <option>Mirzapur</option>
                    <option>Moga</option>
                    <option>Mokokchung</option>
                    <option>Mon</option>
                    <option>Moradabad</option>
                    <option>Morena</option>
                    <option>Mumbai City</option>
                    <option>Mumbai suburban</option>
                    <option>Munger</option>
                    <option>Murshidabad</option>
                    <option>Muzaffarnagar</option>
                    <option>Muzaffarpur</option>
                    <option>Mysore</option>
                    <option>Nabarangpur</option>
                    <option>Nadia</option>
                    <option>Nagaon</option>
                    <option>Nagapattinam</option>
                    <option>Nagaur</option>
                    <option>Nagpur</option>
                    <option>Nainital</option>
                    <option>Nalanda</option>
                    <option>Nalbari</option>
                    <option>Nalgonda</option>
                    <option>Namakkal</option>
                    <option>Nanded</option>
                    <option>Nandurbar</option>
                    <option>Narayanpur</option>
                    <option>Narmada</option>
                    <option>Narsinghpur</option>
                    <option>Nashik</option>
                    <option>Navsari</option>
                    <option>Nawada</option>
                    <option>Nawanshahr</option>
                    <option>Nayagarh</option>
                    <option>Neemuch</option>
                    <option>Nellore</option>
                    <option>New Delhi</option>
                    <option>Nilgiris</option>
                    <option>Nizamabad</option>
                    <option>North 24 Parganas</option>
                    <option>North Delhi</option>
                    <option>North East Delhi</option>
                    <option>North Goa</option>
                    <option>North Sikkim</option>
                    <option>North Tripura</option>
                    <option>North West Delhi</option>
                    <option>Nuapada</option>
                    <option>Ongole</option>
                    <option>Osmanabad</option>
                    <option>Pakur</option>
                    <option>Palakkad</option>
                    <option>Palamu</option>
                    <option>Pali</option>
                    <option>Palwal</option>
                    <option>Panchkula</option>
                    <option>Panchmahal</option>
                    <option>Panchsheel Nagar district (Hapur)</option>
                    <option>Panipat</option>
                    <option>Panna</option>
                    <option>Papum Pare</option>
                    <option>Parbhani</option>
                    <option>Paschim Medinipur</option>
                    <option>Patan</option>
                    <option>Pathanamthitta</option>
                    <option>Pathankot</option>
                    <option>Patiala</option>
                    <option>Patna</option>
                    <option>Pauri Garhwal</option>
                    <option>Perambalur</option>
                    <option>Phek</option>
                    <option>Pilibhit</option>
                    <option>Pithoragarh</option>
                    <option>Pondicherry</option>
                    <option>Poonch</option>
                    <option>Porbandar</option>
                    <option>Pratapgarh</option>
                    <option>Pratapgarh</option>
                    <option>Pudukkottai</option>
                    <option>Pulwama</option>
                    <option>Pune</option>
                    <option>Purba Medinipur</option>
                    <option>Puri</option>
                    <option>Purnia</option>
                    <option>Purulia</option>
                    <option>Raebareli</option>
                    <option>Raichur</option>
                    <option>Raigad</option>
                    <option>Raigarh</option>
                    <option>Raipur</option>
                    <option>Raisen</option>
                    <option>Rajauri</option>
                    <option>Rajgarh</option>
                    <option>Rajkot</option>
                    <option>Rajnandgaon</option>
                    <option>Rajsamand</option>
                    <option>Ramabai Nagar (Kanpur Dehat)</option>
                    <option>Ramanagara</option>
                    <option>Ramanathapuram</option>
                    <option>Ramban</option>
                    <option>Ramgarh</option>
                    <option>Rampur</option>
                    <option>Ranchi</option>
                    <option>Ratlam</option>
                    <option>Ratnagiri</option>
                    <option>Rayagada</option>
                    <option>Reasi</option>
                    <option>Rewa</option>
                    <option>Rewari</option>
                    <option>Ri Bhoi</option>
                    <option>Rohtak</option>
                    <option>Rohtas</option>
                    <option>Rudraprayag</option>
                    <option>Rupnagar</option>
                    <option>Sabarkantha</option>
                    <option>Sagar</option>
                    <option>Saharanpur</option>
                    <option>Saharsa</option>
                    <option>Sahibganj</option>
                    <option>Saiha</option>
                    <option>Salem</option>
                    <option>Samastipur</option>
                    <option>Samba</option>
                    <option>Sambalpur</option>
                    <option>Sangli</option>
                    <option>Sangrur</option>
                    <option>Sant Kabir Nagar</option>
                    <option>Sant Ravidas Nagar</option>
                    <option>Saran</option>
                    <option>Satara</option>
                    <option>Satna</option>
                    <option>Sawai Madhopur</option>
                    <option>Sehore</option>
                    <option>Senapati</option>
                    <option>Seoni</option>
                    <option>Seraikela Kharsawan</option>
                    <option>Serchhip</option>
                    <option>Shahdol</option>
                    <option>Shahjahanpur</option>
                    <option>Shajapur</option>
                    <option>Shamli</option>
                    <option>Sheikhpura</option>
                    <option>Sheohar</option>
                    <option>Sheopur</option>
                    <option>Shimla</option>
                    <option>Shimoga</option>
                    <option>Shivpuri</option>
                    <option>Shopian</option>
                    <option>Shravasti</option>
                    <option>Sibsagar</option>
                    <option>Siddharthnagar</option>
                    <option>Sidhi</option>
                    <option>Sikar</option>
                    <option>Simdega</option>
                    <option>Sindhudurg</option>
                    <option>Singrauli</option>
                    <option>Sirmaur</option>
                    <option>Sirohi</option>
                    <option>Sirsa</option>
                    <option>Sitamarhi</option>
                    <option>Sitapur</option>
                    <option>Sivaganga</option>
                    <option>Siwan</option>
                    <option>Solan</option>
                    <option>Solapur</option>
                    <option>Sonbhadra</option>
                    <option>Sonipat</option>
                    <option>Sonitpur</option>
                    <option>South 24 Parganas</option>
                    <option>South Delhi</option>
                    <option>South Garo Hills</option>
                    <option>South Goa</option>
                    <option>South Sikkim</option>
                    <option>South Tripura</option>
                    <option>South West Delhi</option>
                    <option>Sri Muktsar Sahib</option>
                    <option>Srikakulam</option>
                    <option>Srinagar</option>
                    <option>Subarnapur (Sonepur)</option>
                    <option>Sultanpur</option>
                    <option>Sundergarh</option>
                    <option>Supaul</option>
                    <option>Surat</option>
                    <option>Surendranagar</option>
                    <option>Surguja</option>
                    <option>Tamenglong</option>
                    <option>Tarn Taran</option>
                    <option>Tawang</option>
                    <option>Tehri Garhwal</option>
                    <option>Thane</option>
                    <option>Thanjavur</option>
                    <option>The Dangs</option>
                    <option>Theni</option>
                    <option>Thiruvananthapuram</option>
                    <option>Thoothukudi</option>
                    <option>Thoubal</option>
                    <option>Thrissur</option>
                    <option>Tikamgarh</option>
                    <option>Tinsukia</option>
                    <option>Tirap</option>
                    <option>Tiruchirappalli</option>
                    <option>Tirunelveli</option>
                    <option>Tirupur</option>
                    <option>Tiruvallur</option>
                    <option>Tiruvannamalai</option>
                    <option>Tiruvarur</option>
                    <option>Tonk</option>
                    <option>Tuensang</option>
                    <option>Tumkur</option>
                    <option>Udaipur</option>
                    <option>Udalguri</option>
                    <option>Udham Singh Nagar</option>
                    <option>Udhampur</option>
                    <option>Udupi</option>
                    <option>Ujjain</option>
                    <option>Ukhrul</option>
                    <option>Umaria</option>
                    <option>Una</option>
                    <option>Unnao</option>
                    <option>Upper Siang</option>
                    <option>Upper Subansiri</option>
                    <option>Uttar Dinajpur</option>
                    <option>Uttara Kannada</option>
                    <option>Uttarkashi</option>
                    <option>Vadodara</option>
                    <option>Vaishali</option>
                    <option>Valsad</option>
                    <option>Varanasi</option>
                    <option>Vellore</option>
                    <option>Vidisha</option>
                    <option>Viluppuram</option>
                    <option>Virudhunagar</option>
                    <option>Visakhapatnam</option>
                    <option>Vizianagaram</option>
                    <option>Vyara</option>
                    <option>Warangal</option>
                    <option>Wardha</option>
                    <option>Washim</option>
                    <option>Wayanad</option>
                    <option>West Champaran</option>
                    <option>West Delhi</option>
                    <option>West Garo Hills</option>
                    <option>West Kameng</option>
                    <option>West Khasi Hills</option>
                    <option>West Siang</option>
                    <option>West Sikkim</option>
                    <option>West Singhbhum</option>
                    <option>West Tripura</option>
                    <option>Wokha</option>
                    <option>Yadgir</option>
                    <option>Yamuna Nagar</option>
                    <option>Yanam</option>
                    <option>Yavatmal</option>
                    <option>Zunheboto</option>
                    <option>			      </select>
			    </div>			    
			    <div class="form-group col-md-5">
			      <label for="inputState">State</label>
			      <select id="inputState" class="form-control">
			        <option selected>Choose...</option>     
			        <option>Andhra Pradesh</option>
                    <option>Arunachal Pradesh    </option>
                    <option>Assam</option>
                    <option>Bihar</option>
                    <option>Chhattisgarh</option>
                    <option>Goa</option>
                    <option>Gujarat</option>
                    <option>Haryana</option>
                    <option>Himachal Pradesh</option>
                    <option>Jammu and Kashmir</option>
                    <option>Jharkhand</option>
                    <option>Karnataka</option>
                    <option>Kerala</option>
                    <option>Madhya Pradesh</option>
                    <option>Maharashtra</option>
                    <option>Manipur</option>
                    <option>Meghalaya</option>
                    <option>Mizoram</option>
                    <option>Nagaland</option>
                    <option>Odisha</option>
                    <option>Punjab</option>
                    <option>Rajasthan</option>
                    <option>Sikkim</option>
                    <option>Tamil Nadu</option>
                    <option>Telangana</option>
                    <option>Tripura</option>
                    <option>Uttarakhand</option>
                    <option>Uttar Pradesh</option>
                    <option>West Bengal</option>
                    <option>Andaman and Nicobar Islands</option>
                    <option>Chandigarh</option>
                    <option>Dadra and Nagar Haveli</option>
                    <option>Daman and Diu</option>
                    <option>Delhi</option>
                    <option>Lakshadweep</option>
                    <option>Puducherry</option>
                    
			      </select>
			    </div>
			    <div class="form-group col-md-2">
			      <label for="inputZip">Zip</label>
			      <input type="text" class="form-control" id="inputZip">
			    </div>
			  </div>
</option>
</select>
</div>
</div>
<button type="submit" class="btn btn-primary"  >Register </button>
</form>
</div>
</div>
     </div>
   
			<!--   <button type="submit" class="btn btn-primary"  >Register </button>-->
			  
</body>
</html>
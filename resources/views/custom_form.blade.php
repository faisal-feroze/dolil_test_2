
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <!-- <link rel="stylesheet" href="style.css"> -->
  <link href="{{asset('css/style.css')}}" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <body>
    <form id="regForm" action="{{route('save')}}" method="POST">
    @csrf
<h1>Register:</h1>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p>ধাপ ১ঃ অফিসের তথ্যাদি</p>.
  <span>বিভাগ</span>
  <select class="" name="t1f1">
    <option value="">খুলনা</option>
  </select>

  <span>জেলা</span>
  <select class="" name="t1f2">
    <option value="">খুলনা</option>
  </select>

  <span>থানা/উপজেলাাা</span>
  <select class="" name="t1f3">
    <option value="">খুলনা</option>
  </select>

  <br>

  <span>অফিসের নাম</span>
  <select class="" name="t1f4">
    <option value="">খুলনা</option>
  </select>

  <span>উন্নয়ন কর্তৃপক্ষের আওতাধীন হলে তার নাম</span>
  <select class="" name="t1f5">
    <option value="">খুলনা</option>
  </select>

  <span>জমির অবস্থান</span>
  <select class="" name="t1f6">
    <option value="">খুলনা</option>
  </select>

  <br>
  <span>LGT Schedule</span>
  <input type="text" name="t1f7" value="">


  <span>53H Schedule</span>
  <input type="text" name="t1f8" value="">


  <span>স্থাপনা আছে কি না?</span>
  <select class="" name="t1f9">
    <option value="">খুলনা</option>
  </select>

  <span>প্লট/বিল্ডিং/ফ্ল্যাট ডেভেলপার/কো-ডেভেলপার কি না?</span>
  <select class="" name="t1f10">
    <option value="">খুলনা</option>
  </select>

  <span>53FF Schedule</span>
  <input type="text" name="t1f11" value="">




</div>

<div class="tab">Contact Info:
  <p><input name="t2f12" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t2f13" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t2f14" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t2f15" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t2f16" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t2f17" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t2f18" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t2f19" placeholder="Phone..." oninput="this.className = ''"></p>
</div>

<div class="tab">Birthday:
  <p><input name="t3f20" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t3f21" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t3f22" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t3f23" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t3f24" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t3f25" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t3f26" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t3f27" placeholder="Phone..." oninput="this.className = ''"></p>
</div>

<div class="tab">Login Info:
  <p><input name="t4f27" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t4f28" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t4f29" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t4f30" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t4f31" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t4f32" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t4f33" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t4f34" placeholder="Phone..." oninput="this.className = ''"></p>
  <p> <textarea name="t4f35" rows="8" cols="80"></textarea> </p>
</div>

<div class="tab">Login Info:
  <p><input name="t5f36" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="test[]" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="test[]" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="test[]" placeholder="E-mail..." oninput="this.className = ''"></p>

</div>

<div style="overflow:auto;">
  <div style="float:right;">
    <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
    <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
  </div>
</div>

<!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:-243px;">
  <span class="step a" onclick="showTabonc(0)"></span>
  <span class="step b" onclick="showTabonc(1)"></span>
  <span class="step c" onclick="showTabonc(2)"></span>
  <span class="step d" onclick="showTabonc(3)"></span>
  <span class="step e" onclick="showTabonc(4)"></span>
</div>


</form>
 <script src="{{asset('js/script.js')}}" charset="utf-8"></script>

  </body>
</html>

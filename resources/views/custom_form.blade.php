
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <!-- <link rel="stylesheet" href="style.css"> -->
  <link href="{{asset('css/style.css')}}" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <body>
    <form id="regForm" action="{{route('form_save')}}" method="POST">
    @csrf
<h1>Form Fill:</h1>

<!-- One "tab" for each step in the form: -->


<div class="tab">Contact Info:
  <p><input name="t2f12" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t2f13" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t2f14" placeholder="E-mail..." oninput="this.className = ''"></p>
</div>

<div class="tab">Info:
  <p><input name="t3f20" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t3f21" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="t3f22" placeholder="E-mail..." oninput="this.className = ''"></p>
</div>

<div class="tab">Info:
  <p><input name="t4f27" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="t4f28" placeholder="Phone..." oninput="this.className = ''"></p>
</div>

<div class="tab">Login Info:
  <p><input name="t5f36" placeholder="E-mail..." oninput="this.className = ''"></p>
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
</div>


</form>
 <script src="{{asset('js/script.js')}}" charset="utf-8"></script>

  </body>
</html>

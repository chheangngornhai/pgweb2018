@section('title', 'contact_us')
@extends('layouts.front-end')
@section('content')
<div class="wrapper">
    <div class="content contact-us">
    <div class="section contact-information">
           <!DOCTYPE html>
<html lang="en">
<head>
 <title>PG Express Form</title>
 <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet"href="http://fonts.googleapis.com/css?family=Hanuman:400,700" type="text/css" media="all" />
</head>
<style type="text/css">
  body {
    background-color: #ffffff;
}
.help-block {
    display: block;
    margin-top: 5px;
    margin-bottom: 10px;
    color: #b0bcff;
}
*[role="form"] {
    max-width: 650px;
    padding: 15px;
    margin: 0 auto;
    background-color: #f5f5f5;
    border-radius: 0.3em;
}
.form-horizontal .control-label {
    padding-top: 7px;
    margin-bottom: 0;
    text-align: right;
    font-size: 16px;
}
*[role="form"] h2 {
    margin-right: : 5em;
    margin-bottom: 1em;
    color: #1f1fbf;
    font-weight: bold;
}
.h4, .h5, .h6, h4, h5, h6 {
    margin-top: 10px;
    margin-bottom: 50px;
}
</style>

<body>

<div class="container" style="font-family: 'Hanuman',sans-serif;">
<form method="POST" action="{{route('insert-formreg')}}" enctype="multipart/form-data" id="ImageForm" class="form-horizontal" role="form">
                            {{ csrf_field() }}
           
                <h2>ចុះឈ្មោះជាសមាជិក ភីជីអុុិចស្ព្រេស</h2>
                <h4>សូម​បំពេញ ព័ត៌មាន​ខាងក្រោមដើម្បីក្លាយជាសមាជិកភីជីអុិចស្ព្រេស ឬ ទំនាក់ទំនង ៖<br/><br/> 086 900 399 (ស្មាត) / 092 280 222 (ស៊ែលកាត) / 088 5900 399 (មិត្តហ្វូន)</h4>
                @if  ($message = Session::get('success'))
       		<div class="alert alert-success"> 
        	<strong​ style="font-family: 'Hanuman',sans-serif;">អរគុណ សម្រាប់ការចុះឈ្មោះជាសមាជិកភីជីអុុិចស្ព្រេស  ។ ជូនពរ សំណាងល្អ!!!</strong>
        	</div>
   		@endif
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">ឈ្មោះរបស់អ្នក</label>
                    <div class="col-sm-9">
                        <input type="text" name="name" required="required" placeholder="Full Name" class="form-control" autofocus>
                      
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">អ៊ីម៉ែល</label>
                    
                    <div class="col-sm-9">
                        <input type="email" name="email"  placeholder="Email" class="form-control">
                        <span class="help-block">ប្រសិនអត់មានអ៊ីម៉ែលអាចអត់បំពេញបាន</span>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">លេខទូរស័ព្ទ</label>
                    <div class="col-sm-9">
                        <input type="number" name="phone_number" required="required" placeholder="Your Phone Number" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">ភេទ</label>
                    <div class="col-sm-9">
                        <input type="text" name="sex" required="required" placeholder="Sex" class="form-control">
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label required="required" class="col-sm-3 control-label">ថ្ងៃចុះឈ្មោះ</label>
                    <div class="col-sm-9">
                        <input type="date" name="date" required="required" class="form-control">
                    </div>
                </div> -->
                <div class="form-group">
                    <label   class="col-sm-3 control-label">អាស័យដ្ឋាន</label>

                    <div class="col-sm-9">
                        <input type="text" name="address" required="required" placeholder="Address" class="form-control">
                        <span class="help-block">អាស័យដ្ឋាន បច្ចុប្បន្ន (ផ្លូវលេខ សង្កាត់ ខណ្ឌ)</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-7" required="required" >តើលោកអ្នកមាន ម៉ូតូ ផ្ទាល់ខ្លួនដែរឬទេ?</label>
                    <div class="col-sm-8" style="padding-left: 150px;">
                        <div class="row">
                            <div class="col-sm-6" >
                                <input type="radio"  value="មាន" name="motor" required>មាន</input>
                            </div>
                            <div class="col-sm-6">
                                <input type="radio"  value="អត់មាន" name="motor" required>អត់មាន</input>
                            </div>
                            
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-3 col-sm-offset-5">
                        <input type="submit" class="btn btn-primary"  value="ចុចបញ្ចូន">
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->

</body>
</html>
        </div>


    </div>
</div>        

@endsection





<!doctype html>
<html lang="en">
  <head>
  </head>
  <body>
    <!-- Exam form -->
    <form class="was-validated" action="bootstrap/exam/validation/validation.jsp" method="GET" target="_blank">
        <!-- Question 1 textbox-->
        <div class="form-group">
            <!-- Question 1 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_1_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 1
              </button>
            </p>
            <div class="collapse" id="question_1_collapse">
              <div class="card card-body">
                What is a programming lenguague?
              </div>
            </div>
            <!-- Textbox -->
            <label for="form_question_1"Question 1</label>
            <input type="text" class="form-control" id="form_question_1" name="question_1" placeholder="Enter your answer here.." required>
            <div class="invalid-feedback">Please type an asnwer.</div>
        </div>
        <!-- Question 2 Listbox-->
        <div class="form-group">
            <!-- Question 2 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_2_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 2
              </button>
            </p>
            <div class="collapse" id="question_2_collapse">
              <div class="card card-body">
                C# is a compiled language?
              </div>
            </div>
            <select class="custom-select" name="question_2" required>
                <option value="">Click to see the options</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <div class="invalid-feedback">Please choose an option</div>
        </div>
        <!-- Question 3 radio button -->
        <div class="form-group">
            <!-- Question 3 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_3_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 3
              </button>
            </p>
            <div class="collapse" id="question_3_collapse">
              <div class="card card-body">
                With Java you can deploy web services?
              </div>
            </div>
            <!-- Radio button-->
            <label for="inputQuestion3">Select an answer</label>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion3" name="question_3" value="yes" required>
                <label class="custom-control-label" for="inputQuestion3">Yes</label>
            </div>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion3.1" name="question_3" value="no" required>
                <label class="custom-control-label" for="inputQuestion3.1">No</label>
                <div class="invalid-feedback">Please select one option</div>
            </div>
        </div>
        <!-- Question 4 checkbox-->
        <div class="form-group">
            <!-- Question 4 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_4_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 4
              </button>
            </p>
            <div class="collapse" id="question_4_collapse">
              <div class="card card-body">
                What type of data is: 12.34 in Java?
              </div>
            </div>
            <!-- Checkbox-->
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-light active">
                    <input type="radio" value="int" name="question_4" id="option1" autocomplete="off" checked> Int
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="char" name="question_4" id="option2" autocomplete="off"> Char
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="float" name="question_4" id="option3" autocomplete="off"> Float
                </label>
            </div>
        </div>
        <!-- Question 5 checkbox-->
        <div class="form-group">
            <!-- Question 5 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_5_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 5
              </button>
            </p>
            <div class="collapse" id="question_5_collapse">
              <div class="card card-body">
                The following sentence belongs to which lenguage programming?
                String.format("someText");
              </div>
            </div>
            <!-- Checkbox-->
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-light active">
                    <input type="radio" value="python" name="question_5" id="option1" autocomplete="off" checked> Python
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="javascript" name="question_5" id="option2" autocomplete="off"> JavaScript
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="java" name="question_5" id="option3" autocomplete="off"> Java
                </label>
            </div>
        </div>
       <!-- Question 6 radio button -->
        <div class="form-group">
            <!-- Question 6 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_6_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 6
              </button>
            </p>
            <div class="collapse" id="question_6_collapse">
              <div class="card card-body">
                Java is used to deploy cellphones applications?
              </div>
            </div>
            <!-- Radio button-->
            <label for="inputQuestion6">Select an answer</label>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion6" name="question_6" value="yes" required>
                <label class="custom-control-label" for="inputQuestion6">Yes</label>
            </div>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion6.1" name="question_6" value="no" required>
                <label class="custom-control-label" for="inputQuestion6.1">No</label>
                <div class="invalid-feedback">Please select one option</div>
            </div>
        </div>
        <!-- Question 7 Listbox-->
        <div class="form-group">
            <!-- Question 7 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_7_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 7
              </button>
            </p>
            <div class="collapse" id="question_7_collapse">
              <div class="card card-body">
                Java has a garbage collector?
              </div>
            </div>
            <select class="custom-select" name="question_7" required>
                <option value="">Click to see the options</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <div class="invalid-feedback">Please choose an option</div>
        </div>
        <!-- Question 8 checkbox-->
        <div class="form-group">
            <!-- Question 8 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_8_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 8
              </button>
            </p>
            <div class="collapse" id="question_8_collapse">
              <div class="card card-body">
                Which Java library is used for math operations?
              </div>
            </div>
            <!-- Checkbox-->
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-light active">
                    <input type="radio" value="math" name="question_8" id="option1" autocomplete="off" checked> Math
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="mat" name="question_8" id="option2" autocomplete="off"> Mat
                </label>
                <label class="btn btn-light">
                    <input type="radio" value="ma" name="question_8" id="option3" autocomplete="off"> ma
                </label>
            </div>
        </div>
       <!-- Question 9 radio button -->
        <div class="form-group">
            <!-- Question 9 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_9_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 9
              </button>
            </p>
            <div class="collapse" id="question_9_collapse">
              <div class="card card-body">
                You can use framework with Java?
              </div>
            </div>
            <!-- Radio button-->
            <label for="inputQuestion9">Select an answer</label>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion9" name="question_9" value="yes" required>
                <label class="custom-control-label" for="inputQuestion9">Yes</label>
            </div>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="inputQuestion9.1" name="question_9" value="no" required>
                <label class="custom-control-label" for="inputQuestion9.1">No</label>
                <div class="invalid-feedback">Please select one option</div>
            </div>
        </div>
       <!-- Question 10 Listbox-->
        <div class="form-group">
            <!-- Question 10 button -->
            <p>
              <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#question_10_collapse" aria-expanded="false" aria-controls="collapseExample">
                Question 10
              </button>
            </p>
            <div class="collapse" id="question_10_collapse">
              <div class="card card-body">
                Python is a typed language?
              </div>
            </div>
            <select class="custom-select" name="question_10" required>
                <option value="">Click to see the options</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            <div class="invalid-feedback">Please choose an option</div>
        </div>
        <!-- Submit button -->
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </body>
</html>
<!doctype html>
<html lang="en">
  <head>
  </head>
  <body>
    <!-- Employee modal-->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <!--Modal content -->
            <div class="modal-content">
                <!--Modal headers -->
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Employee form</h5>
                    <button type="button" class="close closefirstmodal" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <!--Modal body -->
                <div class="modal-body">
                    <!--Employee form -->                            
                    <div w3-include-html="bootstrap/employee/forms/employee_form.jsp"></div>
                </div>
                <!--Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
  </body>
</html>
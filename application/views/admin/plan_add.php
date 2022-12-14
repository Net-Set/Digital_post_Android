<?php    
    $currency_symbol              =   $this->db->get_where('config' , array('title'=>'currency_symbol'))->row()->value;
?>

<?php echo form_open(base_url() . 'subscription/package/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>
<h4 class="text-center">Add plan information</h4>
<hr>
<div class="form-group row">
  <label class="col-sm-12 control-label">Name</label>
  <div class="col-sm-12">
    <input type="text"  name="name" value="" class="form-control" placeholder="Enter plan full name" required />
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<div class="form-group row">
  <label class="col-sm-12 control-label">Validity(Day)</label>
  <div class="col-sm-12 ">
    <select  class="form-control"  name="day" required>
      <option value="7">1 Week (7 Day)</option>
      <option value="14">2 Week (14 Day)</option>
      <option value="21">3 Week (21 Day)</option>
      <option value="28">4 Week (28 Day)</option>
      <option value="30">1 Month (30 Day)</option>
      <option value="60">2 Month (60 Day)</option>
      <option value="90">3 Month (90 Day)</option>
      <option value="120">4 Month (120 Day)</option>
      <option value="150">5 Month (150 Day)</option>
      <option value="180">6 Month (180 Day)</option>
      <option value="210">7 Month (210 Day)</option>
      <option value="240">8 Month (240 Day)</option>
      <option value="270">9 Month (270 Day)</option>
      <option value="300">10 Month (300 Day)</option>
      <option value="330">11 Month (330 Day)</option>
      <option value="365">12 Month (365 Day)</option>
    </select>
  </div>
</div>

<div class="form-group row">
  <label class="col-sm-12 control-label">Price(<?php echo $currency_symbol; ?>)</label>
  <div class="col-sm-12">
    <input type="number"  step="0.01" name="price" value=""  class="form-control"  placeholder="Enter price" required />
  </div>
  <!-- End col-6 --> 
</div>

<div class="form-group row">
  <label class="col-sm-12 control-label">Status</label>
  <div class="col-sm-12 ">
    <select  class="form-control"  name="status" required>
      <option value="1">Enable</option>
      <option value="0">Disable</option>
    </select>
  </div>
</div>
<div class="form-group" >
     <label class="control-label">Select Poster</label><center>
     <img src="<?php echo base_url().'uploads/default_image/poster.jpg'; ?>" width="80" id="poster_image"></br>
     <input class="imageselect" onchange="showImg2(this);" name="thumbnail" type="file" accept="image/*" /></center>
</div>
<div class="form-group row">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" name='submit' value='upload' class="btn btn-sm btn-primary waves-effect"><span class="btn-label"><i class="fa fa-plus"></i></span>Create </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

</form>
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script>
<script>
        jQuery(document).ready(function() {
          $(".select2").select2();
          $('form').parsley();                            

          });
</script> 
 <script>
      jQuery(document).ready(function() {
          $('form').parsley();
          $(".imageselect").filestyle({
              input: true,
              icon: true,
              buttonBefore: true,
              text: "<?php echo trans('select_image'); ?>",
              htmlIcon: '<span class="fa fa-file-image-o"></span>',
              badge: true,
              badgeName: "badge-danger"
          });
          $(".videoselect").filestyle({
              input: true,
              icon: true,
              buttonBefore: true,
              text: "<?php echo trans('select_video'); ?>",
              htmlIcon: '<span class="fa fa-file-video-o"></span>',
              badge: true,
              badgeName: "badge-danger"
          });

          $( "#selected-source" ).change(function() {
             var source = $("#selected-source option:selected" ).val();
             if(source == 'upload'){
               $("#image-input").show('slow');
               $("#url-input").hide('slow');
               $("#image-input-field").attr("required", true);
               $("#url-input-field").attr("required", false);
             }else{
               $("#image-input").hide('slow');
               $("#url-input").show('slow');
               $("#image-input-field").attr("required", false);
               $("#url-input-field").attr("required", true);
             }
          });
      });
    </script>
<script type="text/javascript">
    function showImg2(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#poster_image')
                    .attr('src', e.target.result)
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

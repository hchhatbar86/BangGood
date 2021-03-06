<!doctype html>
<html lang="en">
		<?php    $title = "Home"; ?>

	<!-- top-header -->
		<?php
			require_once("constants.php");
			require_once('model/Product/Product.php'); 
			require_once('header.php');
		?>
	<!-- //top-header -->

    
  <!-- // log in -->

    <!-- register -->   
          <?php //require_once('register.php');?>
    <!-- //register -->   

	
    <!-- navigation -->
    <?php require_once('nevigation.php');?>
	<!-- //navigation -->

	<!-- top Products -->
	<?php		$result_set=getRecentProduct('pro_id,name,mrp,images,discount',1);

	?>
	<div class="ads-grid col-md-12 col-xs-12">
		<div class="container-fluid">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center col-md-12 col-xs-12 mt-2 mb-3	">
				<span>N</span>ew
				<span>P</span>roducts</h3>
			<!-- //tittle heading -->
			<div class="row">
				<div class="wrapper col-md-12 col-xs-12">
						<!-- first section -->
							<?php //require_once("first_section.php")?>
							<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<h3 class="heading-tittle text-center font-italic">Mobiles</h3>
							<div class="row">
							<?php foreach( $result_set as $result ){ //for($i=0;$i<4;$i++) {?>
								<div class="col-md-3 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center"  style="height:275px; width:auto;">			
												<?php $image = unserialize($result['images']); ?>
											<img src="<?php echo $image[0];?>" alt="<?php echo "".ucfirst($result['name']);?>"   style='height:auto; max-height:90%; width:auto; max-width: 90%;' />
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="./single.php?pro_id=<?php echo $result['pro_id'];?>" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="./single.php?pro_id=<?php echo $result['pro_id'];?>"><?php echo "".ucfirst($result['name']);?></a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price"><?php echo "".round($result['mrp']-($result['mrp']*$result['discount']/100));?></span> INR
												<del><?php echo "".$result['mrp'];?></del>
											</div>
											<div class="snipcart-details single-item hvr-outline-out">
													<button onclick='addToCart(<?php echo $result["pro_id"];?>)'	>ADD TO CART</button>
													<!--<input type="button" value="ADD TO CART" class="button btn">-->
											</div>
										</div>
									</div>
								</div>
								<?php } ?>
						</div>
					</div>
						<!-- //first section -->

							
						<!-- second section -->
						<?php		$result_set=getRecentProduct('pro_id,name,mrp,images,discount',2);?>
						<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<h3 class="heading-tittle text-center font-italic">Laptop</h3>
							<div class="row">
							<?php for($i=0;$i<4;$i++) {?>
								<div class="col-md-3 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center"  style="height:275px; width:auto;">
											<?php $image=Unserialize($result_set[$i]['images']);?>
											<img src="<?php echo $image[0];?>" alt="<?php echo "".ucfirst($result_set[$i]['name']);?>"   style='height:auto; max-height:90%; width:auto; max-width: 90%;' />
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.php?pro_id=<?php echo $result_set[$i]['pro_id'];?>" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="./single.php?pro_id=<?php echo $result_set[$i]['pro_id'];?>"><?php echo "".ucfirst($result_set[$i]['name']);?></a>
											</h4>
											<div class="info-product-price my-2">
												
												<span class="item_price"><?php echo "".round($result_set[$i]['mrp']-($result_set[$i]['mrp']*$result_set[$i]['discount']/100));?></span> INR
												<del><?php echo "".$result_set[$i]['mrp'];?></del>
											</div>
											<div class="snipcart-details single-item hvr-outline-out">
													<button type="button"  value='<?php echo $result_set[$i]['pro_id'];?>' onclick='addToCart(<?php echo $result_set[$i]["pro_id"];?>)' >ADD TO CART</button>
													<!--<input type="button" value="ADD TO CART" class="button btn">-($result_set[$i]['mrp']*$result_set[$i]['discount']/100)-->
											</div>
										</div>
									</div>
								</div>
								<?php } ?>
						</div>
					</div>
						<!-- //second section -->

						<!-- third section 
						<div class="product-sec1 product-sec2 px-sm-5 px-3">
							<div class="row">
								<h3 class="col-md-4 effect-bg">Summer Carnival</h3>
								<p class="w3l-nut-middle">Get Extra 10% Off</p>
								<div class="col-md-8 bg-right-nut">
									<img src="images/image1.png" alt="">
								</div>
							</div>
						</div>-->
						<!-- //third section -->
						
						<!-- fourth section -->
					<?php $result_set=getRecentProduct('pro_id,name,mrp,images,discount',3);?>
						<div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
							<h3 class="heading-tittle text-center font-italic">Accessories</h3>
							<div class="row">
							<?php for($i=0;$i<4;$i++) {?>
								<div class="col-md-3 product-men mt-5">
									<div class="men-pro-item simpleCart_shelfItem">
										<div class="men-thumb-item text-center"  style="height:275px; width:auto;">
											<?php $image=Unserialize($result_set[$i]['images']);?>
											<img src="<?php echo $image[0];?>" alt="<?php echo "".ucfirst($result_set[$i]['name']);?>"   style='height:auto; max-height:90%; width:auto; max-width: 90%;' />
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="./single.php?pro_id=<?php echo $result_set[$i]['pro_id'];?>" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
										</div>
										<div class="item-info-product text-center border-top mt-4">
											<h4 class="pt-1">
												<a href="./single.php?pro_id=<?php echo $result_set[$i]['pro_id'];?>"><?php echo "".ucfirst($result_set[$i]['name']);?></a>
											</h4>
											<div class="info-product-price my-2">
												<span class="item_price"><?php echo "".round($result_set[$i]['mrp']-($result_set[$i]['mrp']*$result_set[$i]['discount']/100));?></span> INR
												<del><?php echo "".$result_set[$i]['mrp'];?></del>
											</div>
											<div class="snipcart-details single-item hvr-outline-out">
													<button type="button"  value='<?php echo $result_set[$i]['pro_id'];?>' onclick='addToCart(<?php echo $result_set[$i]["pro_id"];?>)' >ADD TO CART</button>
													<!--<input type="button" value="ADD TO CART" class="button btn">-->
											</div>
										</div>
									</div>
								</div>
								<?php } ?>
						</div>
					</div>
						<!-- //fourth section -->
						</div>
					</div>
			
				</div>
			</div>
	<!-- //top products -->

	<!-- footer -->
	<div class="footer-top-first">
			<div class="container py-md-5 py-sm-4 py-3">
				<!-- footer first section -->
				<h2 class="footer-top-head-w3l font-weight-bold mb-2">Electronics 	:</h2>
				<p class="footer-main mb-4">
					If you're considering a new laptop, looking for a powerful new car stereo or shopping for a new HDTV, we make it easy to
					find exactly what you need at a price you can afford. We offer Every Day Low Prices on TVs, laptops, cell phones, tablets
					and iPads, video games, desktop computers, cameras and camcorders, audio, video and more.</p>
				<!-- //footer first section -->
				<!-- footer second section -->
				<div class="row w3l-grids-footer border-top border-bottom py-sm-4 py-3">
					<div class="col-md-4 offer-footer">
						<div class="row">
							<div class="col-4 icon-fot">
								<i class="fas fa-dolly"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>Free Shipping</h3>
								<p>on all orders</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 offer-footer my-md-0 my-4">
						<div class="row">
							<div class="col-4 icon-fot">
								<i class="fas fa-shipping-fast"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>Fast Delivery</h3>
								<p>World Wide</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 offer-footer">
						<div class="row">
							<div class="col-4 icon-fot">
								<i class="far fa-thumbs-up"></i>
							</div>
							<div class="col-8 text-form-footer">
								<h3>Big Choice</h3>
								<p>of Products</p>
							</div>
						</div>
					</div>
				</div>
				<!-- //footer second section -->
			</div>
		</div>
	
	<!-- footer -->
	<?php require_once('footer.php');?>
	
	<!-- //footer -->

</body>

</html>
@extends('layouts.master')

@section('title')
  Nos cocktails
@endsection

@section('content')
  @if(Session::has('success'))
  <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div id="charge-message" class="alert alert-success">
        {{ Session::get('success') }}
      </div>
    </div>
  </div>
  @endif
  @foreach($products->chunk(3) as $productChunk)
    <div class="row">
      @foreach($productChunk as $product)
        <div class="col-sm-4 col-md-4">
          <div class="thumbnail">
            <img src="{!!  URL::to('images/Prefait',array($product->imagePath)) !!}  " alt="Product" class="img-responsive">
            <div class="caption">
              <h3>{{ $product->title }}</h3>
              <p class="description">{{ $product->description }}</p>
              <div class="clearfix">
                <div class="pull-left cost">
                  € {{ $product->price }}
                </div>
                <a href="{{ route('product.addtocart', ['id' => $product->id]) }}" class="btn btn-success pull-right" role="button">Ajouter</a>
              </div>
            </div>
          </div>
        </div>
      @endforeach
    </div> 
  @endforeach
  <div class="row">
      {{ $products->links() }}
    </div>
@endsection

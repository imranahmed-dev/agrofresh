@if(Cart::count() == 0)
<tr>
    <td colspan="5" class="text-center">Cart Empty</td>
</tr>
@else
@foreach($cartproducts as $cartproduct)
<tr>
    <td class="shoping__cart__item">
        <img style="width:60px" src="{{ $cartproduct->options['image'] }}" alt="">
        <h5>{{$cartproduct->name}}</h5>
    </td>
    <td class="shoping__cart__price">
        ৳ {{$cartproduct->price}}
    </td>
    <td class="shoping__cart__quantity">
        <div class="quantity">
            <div class="pro-qty">
                <input type="number" min="1" id="qtyval_{{$cartproduct->rowId}}" value="{{ $cartproduct->qty }}">
            </div>
            <a type="button" id="{{$cartproduct->rowId}}" class="btn btn-dark  cartupdate_{{$cartproduct->rowId}}" href="javascript:;">Update</a>
        </div>
    </td>
    <td class="shoping__cart__total">
        ৳ {{$cartproduct->total}}
    </td>
    <td class="shoping__cart__item__close">
        <span id="{{ $cartproduct->rowId }}" class="icon_close cartdelete"></span>
    </td>
</tr>
@endforeach
@endif

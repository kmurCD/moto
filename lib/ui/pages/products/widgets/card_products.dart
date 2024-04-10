import 'package:flutter/material.dart';
import 'package:motomoto/ui/pages/products/widgets/btn_products.dart';

class CardProducts extends StatelessWidget {
  const CardProducts({super.key});

  @override
  Widget build(BuildContext context) {
    const String img =
        'https://s3-alpha-sig.figma.com/img/e9f8/d41b/03e88aaa7db97c6b0fe0eaa6fb825ad4?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=B1OE-jyrvW5Q9Fphw3mQo1YGl8K1JWc5L-~ky8zCgiw4eYDPgRAbTvA3oDELJxCRD0Y1ShFEwH~XzCR5JDPsxawEOMDFrPx1ZazimAOe8faeY5U9Tlf4Con8iKGBDXcht6nnPNRWzggeV0m05-9rQPx8jhbYLImRn6mNzOTP99-ooQfwhb4Hj2Ksq~5ZgqOO6VLYfGFSbiqo31ufaRXR5JHhXyQeiFDS2BEF6XurIxe~kVwdSVxwPw-d-xsYLRdFHVXIgUfdDDVqHFGEHfwaNgi75FNyBKb6fI1lGWkZSnj5SaXoIqRWcLj67WdXRK4VN6iy57kNx6k-K27hyNNmug__';
    return Card(color: Colors.white,
      elevation: 5,shadowColor: const Color(0xff00304E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: SizedBox(
        width: 145,
        height: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(img,height: 73,width: 111,),
            const SizedBox(
              width: 105,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EMBREAGUE',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                  ),
                  Text('COMPLETO TORITO 2T FL MODERNO',style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
            const BtnProducts(mtop: 5,
                height: 28,
                width: 105,
                btnColor: Color(0xffE20727),
                textColor: Colors.white,
                textcontent: 'VER MÁS')
          ],
        ),
      ),
    );
  }
}

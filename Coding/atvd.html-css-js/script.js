function comprar () {
    const valor1 = 2;
    const valor2 = 3;
    const valor3 = 4;
    const valor4 = 5;
    const valor5 = 6;
    const valor6 = 7;

        /* Cálculo da primeira página de produtos (LIMPEZA) */
    let quantidade1 = document.getElementById("quantidade1").value
    let quantidade2 = document.getElementById("quantidade2").value
    let quantidade3 = document.getElementById("quantidade3").value
    let quantidade4 = document.getElementById("quantidade4").value
    let quantidade5 = document.getElementById("quantidade5").value
    let quantidade6 = document.getElementById("quantidade6").value

    let subtotal = ((valor1 * quantidade1)+(valor2 * quantidade2)+(valor3 * quantidade3)+(valor4 * quantidade4)+(valor5 * quantidade5)+(valor6 * quantidade6));

    let total = document.getElementById("total1");
    total.innerHTML = (`R$ ${subtotal},00`);

        /* Cálculo da segunda página de produtos (DECORAÇÃO) */
    let quantidade7 = document.getElementById("quantidade7").value
    let quantidade8 = document.getElementById("quantidade8").value
    let quantidade9 = document.getElementById("quantidade9").value
    let quantidade10 = document.getElementById("quantidade10").value
    let quantidade11 = document.getElementById("quantidade11").value
    let quantidade12 = document.getElementById("quantidade12").value

    let subtotal2 = ((valor1 * quantidade7)+(valor2 * quantidade8)+(valor3 * quantidade9)+(valor4 * quantidade10)+(valor5 * quantidade11)+(valor6 * quantidade12));

    let total2 = document.getElementById("total2");
    total2.innerHTML = (`R$ ${subtotal2},00`);

        /* Cálculo da terceira página de produtos (COMIDAS) */
    let quantidade13 = document.getElementById("quantidade13").value
    let quantidade14 = document.getElementById("quantidade14").value
    let quantidade15 = document.getElementById("quantidade15").value
    let quantidade16 = document.getElementById("quantidade16").value
    let quantidade17 = document.getElementById("quantidade17").value
    let quantidade18 = document.getElementById("quantidade18").value

    let subtotal3 = ((valor1 * quantidade13)+(valor2 * quantidade14)+(valor3 * quantidade15)+(valor4 * quantidade16)+(valor5 * quantidade17)+(valor6 * quantidade18));

    let total3 = document.getElementById("total3");
    total3.innerHTML = (`R$ ${subtotal3},00`);

        /* Cálculo da quarta página de produtos (BEBIDAS) */
    let quantidade19 = document.getElementById("quantidade19").value
    let quantidade20 = document.getElementById("quantidade20").value
    let quantidade21 = document.getElementById("quantidade21").value
    let quantidade22 = document.getElementById("quantidade22").value
    let quantidade23 = document.getElementById("quantidade23").value
    let quantidade24 = document.getElementById("quantidade24").value

    let subtotal4 = ((valor1 * quantidade19)+(valor2 * quantidade20)+(valor3 * quantidade21)+(valor4 * quantidade22)+(valor5 * quantidade23)+(valor6 * quantidade24));

    let total4 = document.getElementById("total4");
    total4.innerHTML = (`R$ ${subtotal4},00`);

        /* Cálculo da quinta página de produtos (PADARIA) */
    let quantidade25 = document.getElementById("quantidade25").value
    let quantidade26 = document.getElementById("quantidade26").value
    let quantidade27 = document.getElementById("quantidade27").value
    let quantidade28 = document.getElementById("quantidade28").value
    let quantidade29 = document.getElementById("quantidade29").value
    let quantidade30 = document.getElementById("quantidade30").value

    let subtotal5 = ((valor1 * quantidade25)+(valor2 * quantidade26)+(valor3 * quantidade27)+(valor4 * quantidade28)+(valor5 * quantidade29)+(valor6 * quantidade30));

    let total5 = document.getElementById("total5");
    total5.innerHTML = (`R$ ${subtotal5},00`);

        /* Cálculo da sexta página de produtos (AUTOMOTIVOS) */
    let quantidade31 = document.getElementById("quantidade31").value
    let quantidade32 = document.getElementById("quantidade32").value
    let quantidade33 = document.getElementById("quantidade33").value
    let quantidade34 = document.getElementById("quantidade34").value
    let quantidade35 = document.getElementById("quantidade35").value
    let quantidade36 = document.getElementById("quantidade36").value

    let subtotal6 = ((valor1 * quantidade31)+(valor2 * quantidade32)+(valor3 * quantidade33)+(valor4 * quantidade34)+(valor5 * quantidade35)+(valor6 * quantidade36));

    let total6 = document.getElementById("total6");
    total6.innerHTML = (`R$ ${subtotal6},00`);

        /* Cálculo da sétima página de produtos (HIGIENE) */
    let quantidade37 = document.getElementById("quantidade37").value
    let quantidade38 = document.getElementById("quantidade38").value
    let quantidade39 = document.getElementById("quantidade39").value
    let quantidade40 = document.getElementById("quantidade40").value
    let quantidade41 = document.getElementById("quantidade41").value
    let quantidade42 = document.getElementById("quantidade42").value

    let subtotal7 = ((valor1 * quantidade37)+(valor2 * quantidade38)+(valor3 * quantidade39)+(valor4 * quantidade40)+(valor5 * quantidade41)+(valor6 * quantidade42));

    let total7 = document.getElementById("total7");
    total7.innerHTML = (`R$ ${subtotal7},00`);
        
}
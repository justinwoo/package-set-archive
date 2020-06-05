module Type.Data.Peano.Int (module Type.Data.Peano.Int.Definition, module Type.Data.Peano.Int.Parse, module Type.Data.Peano.Int.TypeAliases) where

import Type.Data.Peano.Int.Definition (kind Int, class Inverse, class IsZeroInt, class IsInt, class ProductInt, class SumInt, IProxy(..), Neg, Pos, plus, prod, reflectInt)
import Type.Data.Peano.Int.Parse (class ParseInt, parseInt)
import Type.Data.Peano.Int.TypeAliases (N0, N1, N10, N100, N11, N12, N13, N14, N15, N16, N17, N18, N19, N2, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N3, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N4, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N5, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N6, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N7, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N8, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N9, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, P0, P1, P10, P100, P11, P12, P13, P14, P15, P16, P17, P18, P19, P2, P20, P21, P22, P23, P24, P25, P26, P27, P28, P29, P3, P30, P31, P32, P33, P34, P35, P36, P37, P38, P39, P4, P40, P41, P42, P43, P44, P45, P46, P47, P48, P49, P5, P50, P51, P52, P53, P54, P55, P56, P57, P58, P59, P6, P60, P61, P62, P63, P64, P65, P66, P67, P68, P69, P7, P70, P71, P72, P73, P74, P75, P76, P77, P78, P79, P8, P80, P81, P82, P83, P84, P85, P86, P87, P88, P89, P9, P90, P91, P92, P93, P94, P95, P96, P97, P98, P99, n0, n1, n10, n100, n11, n12, n13, n14, n15, n16, n17, n18, n19, n2, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n3, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n4, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n5, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n6, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n7, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n8, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n9, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, p0, p1, p10, p100, p11, p12, p13, p14, p15, p16, p17, p18, p19, p2, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p3, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p4, p40, p41, p42, p43, p44, p45, p46, p47, p48, p49, p5, p50, p51, p52, p53, p54, p55, p56, p57, p58, p59, p6, p60, p61, p62, p63, p64, p65, p66, p67, p68, p69, p7, p70, p71, p72, p73, p74, p75, p76, p77, p78, p79, p8, p80, p81, p82, p83, p84, p85, p86, p87, p88, p89, p9, p90, p91, p92, p93, p94, p95, p96, p97, p98, p99)

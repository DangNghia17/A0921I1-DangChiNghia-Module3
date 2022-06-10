<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 08/06/2022
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand rounded" href="#">
        <img src="images/home/logo.png" width="120" height="100"
             class="d-inline-block align-top" alt="">
    </a>
    <h2 class="d-inline-block text-warning display-1">Furama Resort</h2>
    <a href="#"><h4 class="text-dark font-weight-lighter ">Username : Profile </h4></a>
</nav>
<nav class="navbar navbar-expand-lg navbar-light bg-light position-sticky " style="top:5px;">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto row col-md-6">
            <li class="nav-item active col-md-2 btn btn-light">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item col-md-2 btn btn-light">
                <a class="nav-link" href="#">Employee</a>
            </li>
            <li class="nav-item col-md-2 btn btn-light">
                <a class="nav-link" href="Customer\listCustomer">Customer</a>
            </li>
            <li class="nav-item col-md-2 btn btn-light">
                <a class="nav-link" href="#">Service</a>
            </li>
            <li class="nav-item col-md-2 btn btn-light">
                <a class="nav-link" href="#">Contract</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0 ">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<div class="row">
    <div class="col-md-3">
        <nav class="nav flex-column border border-left position-sticky " style="top:150px;">
            <a class="nav-link active" href="#">Item 1</a>
            <a class="nav-link" href="#">Item</a>
            <a class="nav-link" href="#">Item</a>
            <a class="nav-link ">Item ...</a>
        </nav>
    </div>

    <div class="col-md-9">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id arcu semper, condimentum lorem ac,
        consequat orci. Praesent rhoncus mauris a rhoncus scelerisque. Nunc molestie nunc ut gravida dictum. Morbi
        elementum blandit sollicitudin. Praesent ac molestie quam, a lobortis orci. Proin consectetur nisi ac lacus
        porta, ut vestibulum nunc consequat. Etiam vehicula, eros ac aliquam iaculis, ex sapien ornare enim, sit amet
        consectetur justo diam eget ipsum. Praesent nec sagittis mi. Mauris blandit sollicitudin laoreet. Quisque
        venenatis ornare felis. Curabitur tempus neque sit amet nisi eleifend, vel condimentum dolor molestie.
        Pellentesque dignissim cursus suscipit. In erat nisl, vestibulum nec blandit in, facilisis quis tortor.
        Pellentesque facilisis enim vitae elit sollicitudin tristique.

        Fusce et tortor et enim ornare dapibus in at elit. Sed mollis sodales dui ac mattis. Nunc pretium odio blandit,
        commodo neque nec, rutrum mi. Quisque vitae ipsum mi. Nunc vel quam diam. Proin at dolor nisl. Maecenas dolor
        nulla, dictum eget pellentesque vitae, pellentesque bibendum purus. Nam finibus, libero nec volutpat dictum,
        arcu leo porta nisl, ut euismod enim lacus vitae eros. Proin ac elit scelerisque, aliquam dolor vel, convallis
        urna. Donec gravida interdum justo, vitae iaculis quam.

        Duis facilisis justo finibus, iaculis lacus ac, pretium ligula. Quisque faucibus convallis feugiat. Nullam diam
        lectus, semper quis lectus non, elementum consectetur erat. Duis sit amet nisl a libero pretium aliquet. Duis
        nec aliquet erat. Nunc in est sagittis, tincidunt ex id, pharetra orci. Vivamus a dignissim nisl. Quisque tempus
        erat magna, sit amet laoreet nunc commodo quis. Curabitur semper, odio sed feugiat efficitur, tellus neque
        fermentum justo, vel convallis erat lectus pretium felis. Nullam tempor, dui nec consequat blandit, dolor dolor
        fringilla elit, eget accumsan lacus ipsum in nisi. Donec sed risus dictum mi viverra mollis ac eu erat. Proin
        maximus vestibulum magna, sed tristique nulla feugiat sed.

        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor
        sit amet, consectetur adipiscing elit. Nullam sed vehicula tellus. Maecenas ultrices risus felis, non
        consectetur mauris pulvinar eu. Donec ac nisl dui. Phasellus bibendum purus tristique blandit semper. Integer
        sed lorem eget purus malesuada ultricies in vel lorem. Phasellus sagittis eget magna sit amet luctus.

        Suspendisse potenti. Integer vel tortor eu leo iaculis venenatis at eu eros. Sed pharetra libero id volutpat
        semper. Nulla scelerisque sapien vitae porttitor dapibus. Maecenas pellentesque vel enim in rutrum. Nulla
        tincidunt, neque eget ultrices iaculis, enim nunc gravida mi, ac egestas purus magna eu magna. Donec nulla nisl,
        aliquet in commodo id, commodo sed quam. Aenean tempus aliquam diam eu maximus. Quisque lacinia auctor sem.
        Praesent elit lacus, semper non facilisis sed, ultricies et leo. Cras non dui ut purus semper aliquam eu euismod
        augue.

        <h1> Lorem ispum </h1>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id arcu semper, condimentum lorem ac,
        consequat orci. Praesent rhoncus mauris a rhoncus scelerisque. Nunc molestie nunc ut gravida dictum. Morbi
        elementum blandit sollicitudin. Praesent ac molestie quam, a lobortis orci. Proin consectetur nisi ac lacus
        porta, ut vestibulum nunc consequat. Etiam vehicula, eros ac aliquam iaculis, ex sapien ornare enim, sit amet
        consectetur justo diam eget ipsum. Praesent nec sagittis mi. Mauris blandit sollicitudin laoreet. Quisque
        venenatis ornare felis. Curabitur tempus neque sit amet nisi eleifend, vel condimentum dolor molestie.
        Pellentesque dignissim cursus suscipit. In erat nisl, vestibulum nec blandit in, facilisis quis tortor.
        Pellentesque facilisis enim vitae elit sollicitudin tristique.

        Fusce et tortor et enim ornare dapibus in at elit. Sed mollis sodales dui ac mattis. Nunc pretium odio blandit,
        commodo neque nec, rutrum mi. Quisque vitae ipsum mi. Nunc vel quam diam. Proin at dolor nisl. Maecenas dolor
        nulla, dictum eget pellentesque vitae, pellentesque bibendum purus. Nam finibus, libero nec volutpat dictum,
        arcu leo porta nisl, ut euismod enim lacus vitae eros. Proin ac elit scelerisque, aliquam dolor vel, convallis
        urna. Donec gravida interdum justo, vitae iaculis quam.

        Duis facilisis justo finibus, iaculis lacus ac, pretium ligula. Quisque faucibus convallis feugiat. Nullam diam
        lectus, semper quis lectus non, elementum consectetur erat. Duis sit amet nisl a libero pretium aliquet. Duis
        nec aliquet erat. Nunc in est sagittis, tincidunt ex id, pharetra orci. Vivamus a dignissim nisl. Quisque tempus
        erat magna, sit amet laoreet nunc commodo quis. Curabitur semper, odio sed feugiat efficitur, tellus neque
        fermentum justo, vel convallis erat lectus pretium felis. Nullam tempor, dui nec consequat blandit, dolor dolor
        fringilla elit, eget accumsan lacus ipsum in nisi. Donec sed risus dictum mi viverra mollis ac eu erat. Proin
        maximus vestibulum magna, sed tristique nulla feugiat sed.

        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor
        sit amet, consectetur adipiscing elit. Nullam sed vehicula tellus. Maecenas ultrices risus felis, non
        consectetur mauris pulvinar eu. Donec ac nisl dui. Phasellus bibendum purus tristique blandit semper. Integer
        sed lorem eget purus malesuada ultricies in vel lorem. Phasellus sagittis eget magna sit amet luctus.

        Suspendisse potenti. Integer vel tortor eu leo iaculis venenatis at eu eros. Sed pharetra libero id volutpat
        semper. Nulla scelerisque sapien vitae porttitor dapibus. Maecenas pellentesque vel enim in rutrum. Nulla
        tincidunt, neque eget ultrices iaculis, enim nunc gravida mi, ac egestas purus magna eu magna. Donec nulla nisl,
        aliquet in commodo id, commodo sed quam. Aenean tempus aliquam diam eu maximus. Quisque lacinia auctor sem.
        Praesent elit lacus, semper non facilisis sed, ultricies et leo. Cras non dui ut purus semper aliquam eu euismod
        augue.
    </div>
    <%--main content text sample--%>
</div>
<div class="row col-md-12 bg-info pt-4 pb-4 ">
    <h5 class="text-center">
        <pre class="text-white lead">Lifestyle Blog ,Tuyển Dụng ,Liên Hệ ,Liên hệ
        103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam
        Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666
        Email: reservation@furamavietnam.com * www.furamavietnam.com GDS Codes: Amadeus-GD DADFUR, Galileo/Apollo-GD
        16236, Sabre-GD 032771, Worldspan- GD DADFU
        </pre>
    </h5>
</div>
</body>
</html>

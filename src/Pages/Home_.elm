module Pages.Home_ exposing (view)

import Css
import Html.Styled exposing (Html, a, button, div, h1, header, img, main_, nav, span, text, toUnstyled)
import Html.Styled.Attributes as Attr exposing (css)
import Svg.Styled exposing (path, svg)
import Svg.Styled.Attributes as SvgAttr
import Tailwind.Breakpoints as Bp
import Tailwind.Utilities as Tw
import View exposing (View)


layout : Html msg
layout =
    {- This example requires Tailwind CSS v2.0+ -}
    div []
        [ nav
            [ css
                [ Tw.bg_gray_800
                ]
            ]
            [ div
                [ css
                    [ Tw.max_w_7xl
                    , Tw.mx_auto
                    , Tw.px_4
                    , Bp.lg
                        [ Tw.px_8
                        ]
                    , Bp.sm
                        [ Tw.px_6
                        ]
                    ]
                ]
                [ div
                    [ css
                        [ Tw.flex
                        , Tw.items_center
                        , Tw.justify_between
                        , Tw.h_16
                        ]
                    ]
                    [ div
                        [ css
                            [ Tw.flex
                            , Tw.items_center
                            ]
                        ]
                        [ div
                            [ css
                                [ Tw.flex_shrink_0
                                ]
                            ]
                            [ img
                                [ css
                                    [ Tw.h_8
                                    , Tw.w_8
                                    ]
                                , Attr.src "https://tailwindui.com/img/logos/workflow-mark-indigo-500.svg"
                                , Attr.alt "Workflow"
                                ]
                                []
                            ]
                        , div
                            [ css
                                [ Tw.hidden
                                , Bp.md
                                    [ Tw.block
                                    ]
                                ]
                            ]
                            [ div
                                [ css
                                    [ Tw.ml_10
                                    , Tw.flex
                                    , Tw.items_baseline
                                    , Tw.space_x_4
                                    ]
                                ]
                                [ {- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -}
                                  a
                                    [ Attr.href "#"
                                    , css
                                        [ Tw.bg_gray_900
                                        , Tw.text_white
                                        , Tw.px_3
                                        , Tw.py_2
                                        , Tw.rounded_md
                                        , Tw.text_sm
                                        , Tw.font_medium
                                        ]
                                    ]
                                    [ text "Dashboard" ]
                                , a
                                    [ Attr.href "#"
                                    , css
                                        [ Tw.text_gray_300
                                        , Tw.px_3
                                        , Tw.py_2
                                        , Tw.rounded_md
                                        , Tw.text_sm
                                        , Tw.font_medium
                                        , Css.hover
                                            [ Tw.bg_gray_700
                                            , Tw.text_white
                                            ]
                                        ]
                                    ]
                                    [ text "Team" ]
                                , a
                                    [ Attr.href "#"
                                    , css
                                        [ Tw.text_gray_300
                                        , Tw.px_3
                                        , Tw.py_2
                                        , Tw.rounded_md
                                        , Tw.text_sm
                                        , Tw.font_medium
                                        , Css.hover
                                            [ Tw.bg_gray_700
                                            , Tw.text_white
                                            ]
                                        ]
                                    ]
                                    [ text "Projects" ]
                                , a
                                    [ Attr.href "#"
                                    , css
                                        [ Tw.text_gray_300
                                        , Tw.px_3
                                        , Tw.py_2
                                        , Tw.rounded_md
                                        , Tw.text_sm
                                        , Tw.font_medium
                                        , Css.hover
                                            [ Tw.bg_gray_700
                                            , Tw.text_white
                                            ]
                                        ]
                                    ]
                                    [ text "Calendar" ]
                                , a
                                    [ Attr.href "#"
                                    , css
                                        [ Tw.text_gray_300
                                        , Tw.px_3
                                        , Tw.py_2
                                        , Tw.rounded_md
                                        , Tw.text_sm
                                        , Tw.font_medium
                                        , Css.hover
                                            [ Tw.bg_gray_700
                                            , Tw.text_white
                                            ]
                                        ]
                                    ]
                                    [ text "Reports" ]
                                ]
                            ]
                        ]
                    , div
                        [ css
                            [ Tw.hidden
                            , Bp.md
                                [ Tw.block
                                ]
                            ]
                        ]
                        [ div
                            [ css
                                [ Tw.ml_4
                                , Tw.flex
                                , Tw.items_center
                                , Bp.md
                                    [ Tw.ml_6
                                    ]
                                ]
                            ]
                            [ button
                                [ css
                                    [ Tw.bg_gray_800
                                    , Tw.p_1
                                    , Tw.rounded_full
                                    , Tw.text_gray_400
                                    , Css.focus
                                        [ Tw.outline_none
                                        , Tw.ring_2
                                        , Tw.ring_offset_2
                                        , Tw.ring_offset_gray_800
                                        , Tw.ring_white
                                        ]
                                    , Css.hover
                                        [ Tw.text_white
                                        ]
                                    ]
                                ]
                                [ span
                                    [ css
                                        [ Tw.sr_only
                                        ]
                                    ]
                                    [ text "View notifications" ]
                                , {- Heroicon name: outline/bell -}
                                  svg
                                    [ SvgAttr.css
                                        [ Tw.h_6
                                        , Tw.w_6
                                        ]
                                    , SvgAttr.fill "none"
                                    , SvgAttr.viewBox "0 0 24 24"
                                    , SvgAttr.stroke "currentColor"
                                    , Attr.attribute "aria-hidden" "true"
                                    ]
                                    [ path
                                        [ SvgAttr.strokeLinecap "round"
                                        , SvgAttr.strokeLinejoin "round"
                                        , SvgAttr.strokeWidth "2"
                                        , SvgAttr.d "M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
                                        ]
                                        []
                                    ]
                                ]
                            , {- Profile dropdown -}
                              div
                                [ css
                                    [ Tw.ml_3
                                    , Tw.relative
                                    ]
                                ]
                                [ div []
                                    [ button
                                        [ Attr.type_ "button"
                                        , css
                                            [ Tw.max_w_xs
                                            , Tw.bg_gray_800
                                            , Tw.rounded_full
                                            , Tw.flex
                                            , Tw.items_center
                                            , Tw.text_sm
                                            , Css.focus
                                                [ Tw.outline_none
                                                , Tw.ring_2
                                                , Tw.ring_offset_2
                                                , Tw.ring_offset_gray_800
                                                , Tw.ring_white
                                                ]
                                            ]
                                        , Attr.id "user-menu-button"
                                        , Attr.attribute "aria-expanded" "false"
                                        , Attr.attribute "aria-haspopup" "true"
                                        ]
                                        [ span
                                            [ css
                                                [ Tw.sr_only
                                                ]
                                            ]
                                            [ text "Open user menu" ]
                                        , img
                                            [ css
                                                [ Tw.h_8
                                                , Tw.w_8
                                                , Tw.rounded_full
                                                ]
                                            , Attr.src "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                                            , Attr.alt ""
                                            ]
                                            []
                                        ]
                                    ]
                                , {-
                                     Dropdown menu, show/hide based on menu state.

                                     Entering: "transition ease-out duration-100"
                                       From: "transform opacity-0 scale-95"
                                       To: "transform opacity-100 scale-100"
                                     Leaving: "transition ease-in duration-75"
                                       From: "transform opacity-100 scale-100"
                                       To: "transform opacity-0 scale-95"
                                  -}
                                  div
                                    [ css
                                        [ Tw.origin_top_right
                                        , Tw.absolute
                                        , Tw.right_0
                                        , Tw.mt_2
                                        , Tw.w_48
                                        , Tw.rounded_md
                                        , Tw.shadow_lg
                                        , Tw.py_1
                                        , Tw.bg_white
                                        , Tw.ring_1
                                        , Tw.ring_black
                                        , Tw.ring_opacity_5
                                        , Css.focus
                                            [ Tw.outline_none
                                            ]
                                        ]
                                    , Attr.attribute "role" "menu"
                                    , Attr.attribute "aria-orientation" "vertical"
                                    , Attr.attribute "aria-labelledby" "user-menu-button"
                                    , Attr.tabindex -1
                                    ]
                                    [ {- Active: "bg-gray-100", Not Active: "" -}
                                      a
                                        [ Attr.href "#"
                                        , css
                                            [ Tw.block
                                            , Tw.px_4
                                            , Tw.py_2
                                            , Tw.text_sm
                                            , Tw.text_gray_700
                                            ]
                                        , Attr.attribute "role" "menuitem"
                                        , Attr.tabindex -1
                                        , Attr.id "user-menu-item-0"
                                        ]
                                        [ text "Your Profile" ]
                                    , a
                                        [ Attr.href "#"
                                        , css
                                            [ Tw.block
                                            , Tw.px_4
                                            , Tw.py_2
                                            , Tw.text_sm
                                            , Tw.text_gray_700
                                            ]
                                        , Attr.attribute "role" "menuitem"
                                        , Attr.tabindex -1
                                        , Attr.id "user-menu-item-1"
                                        ]
                                        [ text "Settings" ]
                                    , a
                                        [ Attr.href "#"
                                        , css
                                            [ Tw.block
                                            , Tw.px_4
                                            , Tw.py_2
                                            , Tw.text_sm
                                            , Tw.text_gray_700
                                            ]
                                        , Attr.attribute "role" "menuitem"
                                        , Attr.tabindex -1
                                        , Attr.id "user-menu-item-2"
                                        ]
                                        [ text "Sign out" ]
                                    ]
                                ]
                            ]
                        ]
                    , div
                        [ css
                            [ Tw.neg_mr_2
                            , Tw.flex
                            , Bp.md
                                [ Tw.hidden
                                ]
                            ]
                        ]
                        [ {- Mobile menu button -}
                          button
                            [ Attr.type_ "button"
                            , css
                                [ Tw.bg_gray_800
                                , Tw.inline_flex
                                , Tw.items_center
                                , Tw.justify_center
                                , Tw.p_2
                                , Tw.rounded_md
                                , Tw.text_gray_400
                                , Css.focus
                                    [ Tw.outline_none
                                    , Tw.ring_2
                                    , Tw.ring_offset_2
                                    , Tw.ring_offset_gray_800
                                    , Tw.ring_white
                                    ]
                                , Css.hover
                                    [ Tw.text_white
                                    , Tw.bg_gray_700
                                    ]
                                ]
                            , Attr.attribute "aria-controls" "mobile-menu"
                            , Attr.attribute "aria-expanded" "false"
                            ]
                            [ span
                                [ css
                                    [ Tw.sr_only
                                    ]
                                ]
                                [ text "Open main menu" ]
                            , {-
                                 Heroicon name: outline/menu

                                 Menu open: "hidden", Menu closed: "block"
                              -}
                              svg
                                [ SvgAttr.css
                                    [ Tw.block
                                    , Tw.h_6
                                    , Tw.w_6
                                    ]
                                , SvgAttr.fill "none"
                                , SvgAttr.viewBox "0 0 24 24"
                                , SvgAttr.stroke "currentColor"
                                , Attr.attribute "aria-hidden" "true"
                                ]
                                [ path
                                    [ SvgAttr.strokeLinecap "round"
                                    , SvgAttr.strokeLinejoin "round"
                                    , SvgAttr.strokeWidth "2"
                                    , SvgAttr.d "M4 6h16M4 12h16M4 18h16"
                                    ]
                                    []
                                ]
                            , {-
                                 Heroicon name: outline/x

                                 Menu open: "block", Menu closed: "hidden"
                              -}
                              svg
                                [ SvgAttr.css
                                    [ Tw.hidden
                                    , Tw.h_6
                                    , Tw.w_6
                                    ]
                                , SvgAttr.fill "none"
                                , SvgAttr.viewBox "0 0 24 24"
                                , SvgAttr.stroke "currentColor"
                                , Attr.attribute "aria-hidden" "true"
                                ]
                                [ path
                                    [ SvgAttr.strokeLinecap "round"
                                    , SvgAttr.strokeLinejoin "round"
                                    , SvgAttr.strokeWidth "2"
                                    , SvgAttr.d "M6 18L18 6M6 6l12 12"
                                    ]
                                    []
                                ]
                            ]
                        ]
                    ]
                ]
            , {- Mobile menu, show/hide based on menu state. -}
              div
                [ css
                    [ Bp.md
                        [ Tw.hidden
                        ]
                    ]
                , Attr.id "mobile-menu"
                ]
                [ div
                    [ css
                        [ Tw.px_2
                        , Tw.pt_2
                        , Tw.pb_3
                        , Tw.space_y_1
                        , Bp.sm
                            [ Tw.px_3
                            ]
                        ]
                    ]
                    [ {- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -}
                      a
                        [ Attr.href "#"
                        , css
                            [ Tw.bg_gray_900
                            , Tw.text_white
                            , Tw.block
                            , Tw.px_3
                            , Tw.py_2
                            , Tw.rounded_md
                            , Tw.text_base
                            , Tw.font_medium
                            ]
                        ]
                        [ text "Dashboard" ]
                    , a
                        [ Attr.href "#"
                        , css
                            [ Tw.text_gray_300
                            , Tw.block
                            , Tw.px_3
                            , Tw.py_2
                            , Tw.rounded_md
                            , Tw.text_base
                            , Tw.font_medium
                            , Css.hover
                                [ Tw.bg_gray_700
                                , Tw.text_white
                                ]
                            ]
                        ]
                        [ text "Team" ]
                    , a
                        [ Attr.href "#"
                        , css
                            [ Tw.text_gray_300
                            , Tw.block
                            , Tw.px_3
                            , Tw.py_2
                            , Tw.rounded_md
                            , Tw.text_base
                            , Tw.font_medium
                            , Css.hover
                                [ Tw.bg_gray_700
                                , Tw.text_white
                                ]
                            ]
                        ]
                        [ text "Projects" ]
                    , a
                        [ Attr.href "#"
                        , css
                            [ Tw.text_gray_300
                            , Tw.block
                            , Tw.px_3
                            , Tw.py_2
                            , Tw.rounded_md
                            , Tw.text_base
                            , Tw.font_medium
                            , Css.hover
                                [ Tw.bg_gray_700
                                , Tw.text_white
                                ]
                            ]
                        ]
                        [ text "Calendar" ]
                    , a
                        [ Attr.href "#"
                        , css
                            [ Tw.text_gray_300
                            , Tw.block
                            , Tw.px_3
                            , Tw.py_2
                            , Tw.rounded_md
                            , Tw.text_base
                            , Tw.font_medium
                            , Css.hover
                                [ Tw.bg_gray_700
                                , Tw.text_white
                                ]
                            ]
                        ]
                        [ text "Reports" ]
                    ]
                , div
                    [ css
                        [ Tw.pt_4
                        , Tw.pb_3
                        , Tw.border_t
                        , Tw.border_gray_700
                        ]
                    ]
                    [ div
                        [ css
                            [ Tw.flex
                            , Tw.items_center
                            , Tw.px_5
                            ]
                        ]
                        [ div
                            [ css
                                [ Tw.flex_shrink_0
                                ]
                            ]
                            [ img
                                [ css
                                    [ Tw.h_10
                                    , Tw.w_10
                                    , Tw.rounded_full
                                    ]
                                , Attr.src "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                                , Attr.alt ""
                                ]
                                []
                            ]
                        , div
                            [ css
                                [ Tw.ml_3
                                ]
                            ]
                            [ div
                                [ css
                                    [ Tw.text_base
                                    , Tw.font_medium
                                    , Tw.leading_none
                                    , Tw.text_white
                                    ]
                                ]
                                [ text "Tom Cook" ]
                            , div
                                [ css
                                    [ Tw.text_sm
                                    , Tw.font_medium
                                    , Tw.leading_none
                                    , Tw.text_gray_400
                                    ]
                                ]
                                [ text "tom@example.com" ]
                            ]
                        , button
                            [ css
                                [ Tw.ml_auto
                                , Tw.bg_gray_800
                                , Tw.flex_shrink_0
                                , Tw.p_1
                                , Tw.rounded_full
                                , Tw.text_gray_400
                                , Css.focus
                                    [ Tw.outline_none
                                    , Tw.ring_2
                                    , Tw.ring_offset_2
                                    , Tw.ring_offset_gray_800
                                    , Tw.ring_white
                                    ]
                                , Css.hover
                                    [ Tw.text_white
                                    ]
                                ]
                            ]
                            [ span
                                [ css
                                    [ Tw.sr_only
                                    ]
                                ]
                                [ text "View notifications" ]
                            , {- Heroicon name: outline/bell -}
                              svg
                                [ SvgAttr.css
                                    [ Tw.h_6
                                    , Tw.w_6
                                    ]
                                , SvgAttr.fill "none"
                                , SvgAttr.viewBox "0 0 24 24"
                                , SvgAttr.stroke "currentColor"
                                , Attr.attribute "aria-hidden" "true"
                                ]
                                [ path
                                    [ SvgAttr.strokeLinecap "round"
                                    , SvgAttr.strokeLinejoin "round"
                                    , SvgAttr.strokeWidth "2"
                                    , SvgAttr.d "M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
                                    ]
                                    []
                                ]
                            ]
                        ]
                    , div
                        [ css
                            [ Tw.mt_3
                            , Tw.px_2
                            , Tw.space_y_1
                            ]
                        ]
                        [ a
                            [ Attr.href "#"
                            , css
                                [ Tw.block
                                , Tw.px_3
                                , Tw.py_2
                                , Tw.rounded_md
                                , Tw.text_base
                                , Tw.font_medium
                                , Tw.text_gray_400
                                , Css.hover
                                    [ Tw.text_white
                                    , Tw.bg_gray_700
                                    ]
                                ]
                            ]
                            [ text "Your Profile" ]
                        , a
                            [ Attr.href "#"
                            , css
                                [ Tw.block
                                , Tw.px_3
                                , Tw.py_2
                                , Tw.rounded_md
                                , Tw.text_base
                                , Tw.font_medium
                                , Tw.text_gray_400
                                , Css.hover
                                    [ Tw.text_white
                                    , Tw.bg_gray_700
                                    ]
                                ]
                            ]
                            [ text "Settings" ]
                        , a
                            [ Attr.href "#"
                            , css
                                [ Tw.block
                                , Tw.px_3
                                , Tw.py_2
                                , Tw.rounded_md
                                , Tw.text_base
                                , Tw.font_medium
                                , Tw.text_gray_400
                                , Css.hover
                                    [ Tw.text_white
                                    , Tw.bg_gray_700
                                    ]
                                ]
                            ]
                            [ text "Sign out" ]
                        ]
                    ]
                ]
            ]
        , header
            [ css
                [ Tw.bg_white
                , Tw.shadow
                ]
            ]
            [ div
                [ css
                    [ Tw.max_w_7xl
                    , Tw.mx_auto
                    , Tw.py_6
                    , Tw.px_4
                    , Bp.lg
                        [ Tw.px_8
                        ]
                    , Bp.sm
                        [ Tw.px_6
                        ]
                    ]
                ]
                [ h1
                    [ css
                        [ Tw.text_3xl
                        , Tw.font_bold
                        , Tw.text_gray_900
                        ]
                    ]
                    [ text "Dashboard" ]
                ]
            ]
        , main_ []
            [ div
                [ css
                    [ Tw.max_w_7xl
                    , Tw.mx_auto
                    , Tw.py_6
                    , Bp.lg
                        [ Tw.px_8
                        ]
                    , Bp.sm
                        [ Tw.px_6
                        ]
                    ]
                ]
                [ {- Replace with your content -}
                  div
                    [ css
                        [ Tw.px_4
                        , Tw.py_6
                        , Bp.sm
                            [ Tw.px_0
                            ]
                        ]
                    ]
                    [ div
                        [ css
                            [ Tw.border_4
                            , Tw.border_dashed
                            , Tw.border_gray_200
                            , Tw.rounded_lg
                            , Tw.h_96
                            ]
                        ]
                        []
                    ]
                ]
            ]
        ]


view : View msg
view =
    { title = "Homepage"
    , body =
        [ toUnstyled layout ]
    }

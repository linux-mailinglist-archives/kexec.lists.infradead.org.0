Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F711E45D6
	for <lists+kexec@lfdr.de>; Wed, 27 May 2020 16:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZYt9Ro59wej+sF2nuxXBEYM3bivEiDAey5YKF2qLti4=; b=I5zOFAuWxDSDJH
	3z9sRQMZmOiY7ns+rKN0QGkBbgHdSywe8l0/E6fkr6B0QHqkj8PDVOvQBJXpd3BtQyX2yOWmL1J1e
	o2zFeuMNwmMya0u6mPhBQ3BRA9+o5tM+sJqBIEkfB8y4b+6MGuRqHkUKwBGW/c5tWRFKSJdrbjuot
	9VGosZl6kJ2ixF03wW1X2S4laWpsflhWftowGuIA6DGrbDWLQhkhlUXPitbi1CcwYR3717EOr4t5G
	40u0o36OfT9NX0dtxPFXJAcuLo+ED325bseTl4vzwSCZTkalyEudqL8YeqNs52AJFS3LbrIvJsa91
	fuqfWPLMpuM+a8FBx5dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdx2s-0000qF-QW; Wed, 27 May 2020 14:28:38 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdx2P-0000pV-Jg
 for kexec@lists.infradead.org; Wed, 27 May 2020 14:28:11 +0000
Received: by mail-qt1-x843.google.com with SMTP id h9so9063259qtj.7
 for <kexec@lists.infradead.org>; Wed, 27 May 2020 07:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=FwleX6FavJvI4llVuloDJkYuBtDEYvQjFoEF0h/WDec=;
 b=ezRVa4IB67qXfqwfyRlT3Y6eZAo0Ib+ciQAlDeCEOFCyZXsH8yze3uzaLD4Xzhty3e
 ZdZr73jvP6n8eSrn62A7Afd6s/jbu6e0KCUYMO/IvVkFS7o1mtiLyTJfAFxK4KyfabHO
 x+Yr81ITD69hBG/ZPebpaT+sYF8FuGrgSOCtosvELjVTgVy3hrA9utuhiy7Mnj5HHZYu
 586vDRXEzLFDsG7QtXrOD5DC2knjbSb8i7aIxZ6Jgjv1zG1IA7edxI0eiABqoUdkDJsx
 h7trETHggw0+HJ5ehA/eHcn9uKBNos39sQcqNcqNLCQKPHcKjgQ4jY1QW3dmu7OwlUim
 Lc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=FwleX6FavJvI4llVuloDJkYuBtDEYvQjFoEF0h/WDec=;
 b=VLT0gtRAeeeygxPRXRsI0BpnRYwhtm+5bbflOFwhbMpeBok9XUyUMyy99ZW8JTNalE
 yPgjwPBezxe8WxAEIi2LzH35Pg831yJgMxhKtiLn+pRTcWuUZue5xb6fs7ZBqXwDfdjo
 4xGP2aMcfBYkwzTTfKSECwoBfY+aiIEGiqbjIDphv7Hpmtcf3SS1PUFnY3S/ZMqcilNH
 0Cfu2SmdCtp+tpBM2sdV6JPUU/3DwMo42DsmQifgcmihA8iTWAepOXxP7FAcYnLz7fP9
 LYZfAs2prnw/QDiFRZOHS1MQtfRPq+/meB7b0UTdnL5oExRc7foZCK2X2jrsvaniZjOa
 dGUA==
X-Gm-Message-State: AOAM531+kIkyL8qR4H1BTq5Agfsp1iWSQCyYEYw8SszvDalyWdQz3vXn
 sSeal+jIXzroh1ipXa/PjJMTI3YfMqGMb3StHGDgQkGufqg=
X-Google-Smtp-Source: ABdhPJzYdNbpJOqU549L7RzomzcfHWRvg7fBZ9qAucr2NTFhmG5CJHuGx2Fi+u/NQxlfbef1Tcz3lOnNQ48T84pGU7k=
X-Received: by 2002:ac8:7b4c:: with SMTP id m12mr4151614qtu.97.1590589684045; 
 Wed, 27 May 2020 07:28:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:36ed:0:0:0:0:0 with HTTP; Wed, 27 May 2020 07:28:03
 -0700 (PDT)
From: Irene Zakari <irenezakari22@gmail.com>
Date: Wed, 27 May 2020 07:28:03 -0700
Message-ID: <CAFaMNtYseBDZ9cGNBmg4z7VEGbDijSOSkBzA3QVnuxxv-o1hDw@mail.gmail.com>
Subject: PLEASE I NEED YOUR HELP.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_072809_648446_BBB5434A 
X-CRM114-Status: SPAM  ( -13.25  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [irenezakari22[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [irenezakari88[at]gmail.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [irenezakari22[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LOAN  Answer loan question(s)
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: irenezakari88@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5L2g5aW9ICAuLg0KDQrkvaDpgqPovrnmgI7kuYjmoLfmiJHluIzmnJvkvaDkuIDliIfpg73lpb3l
kJfvvJ8NCuaIkeWPq+iJvueQs+Wls+Wjq+OAgiDvvIgyOOWyge+8ie+8jOaIkeaYr+Wmu+WtkOWG
iOavlOS6mueahOWvoeWmhw0K55qE5ZCO5pyf5bel56iL44CC5Lyv57qz5b63wrflt7TljaHph4zC
t+aJjuWNoemHjOS6mu+8iEJlcm5hcmQgQmFrYXJ5IFpha2FyaWHvvInjgIIgQmFqYW0gRW50ZXJw
cmlzZeS4u+euoQ0K77yI5YaI5q+U5Lqa55qE5bu6562R5YWs5Y+477yJ5Lmf5pivQmVybmFyZOea
hOmmluW4reaJp+ihjOWumA0K6L+b5Ye65Y+j77yIR0FNQklB77yJ44CCDQoNCuS6i+WunuS4iu+8
jOaIkeS4iOWkq+S4uuatpOatu+S6juWGoOeKtueXheavkjE5DQrku5bliY3lvoDms5Xlm73mraPl
vI/ml4XooYzkuYvlkI7nmoTml6XmnJ/kuLoyMDE55bm0MTLmnIg15pelDQrop4HpnaLlkI7vvIzk
u5bluKbnnYDmiJEy5bKB6Zu2NuS4quaciOeahOWls+WEv+emu+W8gOS6huaIke+8jA0K5Zyo5oiR
5LiI5aSr5Zug5Yag54q255eF5q+SMTnmrbvkuqHlkI7vvIzku5bnmoTlhYTlvJ/vvIgNCuaIkeW3
suaVheeahOi0remUgOmUgOWUrue7j+eQhg0K5LiI5aSr5YWs5Y+477yI6Km55aeG5pavwrfmiZjm
mIbljZrCt+WlpemHjOS6muW+t8K35omO5Y2h6YeM5Lqa5YWI55Sf77yJ5oOz6KaBDQrlsIbmiJHl
t7LmlYXkuIjlpKvnmoTmiYDmnInotKLkuqflkozotYTmupDovazmjaLmiJDku5bnmoQNCuW4kOaI
t++8jOeUseS6jui/meS4quWOn+WboO+8jOaIkeehruWunuacieS4gOS4quS4juaIkeWQteaetuea
hOeUt+WtqQ0K5LuW77yM6L+Z5L2/5LuW5a+55oiR5Y+R54GrDQrpm4fnlKjliLrlrqLmnYDmrbvm
iJHnmoTnqIvluqbvvIzkvYbmiJHopoHojaPogIDlvZLmiJENCuWJjeW+gOWPpuS4gOS4quWQjeS4
uuW4g+Wfuue6s+azlee0oueahOWbveWutuaIkOWKnw0K5oiR5Lus5L2P5Zyo5pWZ5aCC6YeM6L+H
552A5oiR5Lus5Lqy54ix55qE55Sf5rS744CCDQrogIHlrp7or7TvvIzljbPkvb/lnKjluIPln7rn
urPms5XntKLvvIzmiJHku6znmoTnoa7ov4fnnYDku6TkurrmgZDmg6fnmoTnlJ/mtLvvvIzlm6Dk
uLoNCumCo+S6m+WIuuWuoui/veWHu+aIkeS7rOOAgg0KDQrlrp7pmYXkuIrvvIzmiJHmg7PkuI7m
gqjorqjorrrnmoTmmK/lhbPkuo7miJHnmoTkuKrkurrpl67popgNCuWFs+azqOaIkeW3suaVheS4
iOWkq+WtmOWFpeaIkeS7peWklumTtuihjOeahOi1hOmHkQ0K5Zu95a625Lym5pWm5Lul5oiR55qE
5ZCN5LmJ5oiQ5Li65Lu35YC8NDUw5LiH576O5YWD55qE6L+R5LqyDQrnvo7lm73nvo7lhYPvvIwN
CuaIkemcgOimgeaCqOeahOW4ruWKqe+8jOS7peW4ruWKqeaIkeWwhui/meS6m+mSsei9rOWFpeaC
qOeahA0K5biQ5oi377yM5bm25bCG6L+Z5Lqb6LWE6YeR5oqV6LWE5Yiw5oKo55qE5Zu95a62L+Wc
sOWMuu+8jOWboOS4uuaIkeaDs+imgei/meS6mw0K5rGH5YWl5Zu95aSW55qE6ZKxDQrmiJHlt7Ln
u4/pgJrov4fpgq7ku7bpgJrnn6Xpk7booYzmiJHnmoTmrbvkuqENCuS4iOWkq+WSjOaIkeeahOeb
ruagh+aYr+Wwhui/meS6m+i1hOmHkei9rOWFpeWPpuS4gOS4quW4kOaItw0K5LuW5Lus5Li65LuW
55qE5q275oSf5Yiw5oOK6K6277yM5LuW5Lus5ZCR5oiR6K+B5a6e5LqG5oiR55qEDQrkuIjlpKvm
mK/ku5bku6znmoTlpb3pob7lrqLvvIzku5bku6zkuZ/lkJHmiJHor4Hlrp4NCuacieS4gOS4quaI
keWQjeWtl+eahOS6suaImui0puaIt++8jOS7luS7rOWRiuivieaIkQ0K5LuL57uN5LiA5Liq5Luj
6KGo5oiR5L2c5Li65oiR55qE5Y+X5omY5Lq65ZKM5oiR55qE5Y+X5omY5Lq655qE5Lq6DQrku5bk
u6zlsIbov5nkupvotYTph5HovazlhaXmiJHnmoTku7vkvZXluJDmiLfnmoTlkIjkvZzkvJnkvLQN
CumAieaLqe+8jA0KDQror7forqnmiJHluK7liqnmgqjmiJDkuLrmiJHnmoTlj5fmiZjkurrlkozm
iJHnmoTlkIjkvJnkuroNCumTtuihjOS8muWwhui/meS6m+i1hOmHkei9rOWFpeaCqOeahOW4kOaI
t++8jOS7peS+v+aIkeS7rA0K5Y+v5Lul5p2l6LS15Zu96YeN6I636Ieq55Sx77yM6K+35LiN6KaB
DQrmg7PopoHku7vkvZXkvJrkvKTlrrPliLDmiJHnmoTkuroNCg0K6K+35biu5Yqp5oiR77yM5oiR
5a+55L2g5b6I55yf6K+a77yM5oiR5oOz5oiQ5Li65L2g55qE5LiA5ZGYDQrlpoLmnpzmgqjkuI3k
u4vmhI/mjqXlj5fmiJHku6zlubbluKbpoobmiJHku6zotbDlkJHmm7Tlpb3nmoTlrrbluq0NCui0
teWbveeahOacquadpeOAgg0KDQrlm6DmraTvvIzmiJHlsIbnu5nmgqjpk7booYzogZTns7vmlrnl
vI/lkozlhbbku5blv4XopoHnmoQNCuWmguaenOaCqOWPquetlOW6lOaIkeWwhuWcqOaIkeeahOS4
i+S4gOWwgeeUteWtkOmCruS7tuS4reaPkOS+m+S/oeaBr++8jA0K5LiNL+S7juacquiDjOWPm+aI
keaIluWHuuS6juWuieWFqOebrueahOWQkeS7u+S9leS6uumAj+mcsuatpOS6iw0K5Zug5Li66L+Z
5Lqb6ZKx5piv5oiR55Sf5a2Y55qE5ZSv5LiA5biM5pybDQroh6rku47miJHlpLHljrvkuIjlpKvk
u6XmnaXvvIzmiJHlkozlpbPlhL/kuIDotbfmnaXliLDkuoblnLDnkIPjgIINCg0K5q2k5aSW77yM
5Zyo5oiR5ZCR5oKo5Y+R6YCB6ZO26KGM5ZKM5biQ5oi36K+m57uG5L+h5oGv5LmL5YmN77yM5oiR
6ZyA6KaBDQrmgqjlj6/ku6XlnKjkuIvpnaLlkJHmiJHlj5HpgIHmgqjnmoTmlbDmja7vvIzku6Xk
vr/miJHlrozlhajnoa7lrproh6rlt7HmmK8NCuS4jeS/oeS7u+mUmeivr+eahOS6uuOAgg0K6ICM
5LiU77yM6L+Z5Lmf5L2/5oiR6IO95aSf5Li65oKo5Y+R6YCB6ZO26KGM6IGU57O75pa55byPDQrk
uI7ku5bku6zmsp/pgJrku6Xov5vooYzmm7TlpJrpqozor4Hlubborqnmgqjnoa7orqQNCuS7jumT
tuihjOmCo+mHjOiOt+W+l+acieWFs+i/meeslOi1hOmHkeeahOS/oeaBr+OAguWSjA0K5pu05aW9
5Zyw5LqG6Kej5oKo77yM5oiR5bCG57uZ5oKo5oC75pWw55qEMjXvvIUNCui9rOenu+WQjueahOmS
seS9nOS4uuihpeWBvw0KDQoNCjEu5YWo5ZCN77yaLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uDQoy
LuWcsOWdgO+8mi4uLi4uLi4uLi4uLi4uLi4uLg0KMy7lm73nsY3vvJouLi4uLi4uLi4uLuaAp+WI
qy4uLi4uLi4uLi4uLi4uLi4NCjQu5bm06b6E77yaLi4uLi4uLi4u5Ye655Sf5pel5pyf77yaLi4u
Li4NCjUu6IGM5Lia77yaLi4uLi4uLi4uLi4uLi4uLi4u44CCDQouLi4uLg0KNi7nlLXor53vvJou
Li4uLi4uLi7kvKDnnJ/vvJouLi4uLi4uLi4uLi4uLi4uLi4uLi4NCjcu5Y6f5Lqn5Zu977yaLi4u
Li4uLuWbveWutu+8mi4uLi4uLi4uLi4uLi4uDQo4LuiBjOS4mu+8mi4uLi4uLi4uLi4uLi4uLi4u
LuOAgg0KLi4uLi4uLi4uLi4uLi4uLg0KOS7lqZrlp7vnirblhrUuLi4uLi4uLi4uLueUteWtkOmC
ruS7tuWcsOWdgO+8mi4uLi4uLi4uLi4uLg0KMTAu5omr5o+P5oKo55qE6Lqr5Lu96K+B5oiW6am+
6am25omn54WnL+eFp+eJh+eahOWJr+acrO+8mi4uLi4uLi4uLi4uLg0K5a6j6KiA77yaDQoNCuWQ
jOaXtu+8jOaCqOWPr+S7pemAmui/h+aIkeeahOeJp+W4iOS4juaIkeiBlOezu++8jOS7lueahOWQ
jeWtl+WPq+S/nee9l+eJp+W4iOOAgg0K5q+P5b2T5oKo5omT55S16K+d5pe277yM5ZGK6K+J5LuW
5oKo5oOz5ZKM5oiR6K+06K+d77yM5Zug5Li6DQrnjrDlnKjmiJHkvY/lnKjluIPln7rnurPms5Xn
tKLnmoTmlZnloILph4zvvIzmiJHkuI0NCuaDs+imgeWGjeWRhuWcqOi/memHjO+8jOS7lueahOeU
teivneaYr+i/meS4qu+8iCsyMjYgNzUyMTM2NDbvvIkNCg0K5oiR5bCG5Zyo6L+Z6YeM5YGc5q2i
77yM5oiR5bCG562J5b6F5oKo55qE5Zue5aSN77yM6ZqP5pe25Y+v5LulDQror6Lpl67ku7vkvZXm
gqjmg7Pnn6XpgZPnmoTlhbPkuo7miJHnmoTkv6Hmga/vvIzlubblsIbmgqjnmoTmlbDmja7kvZzk
uLrmiJHlj5HpgIHnu5nmiJENCuimgeaxgu+8jOS7peS+v+aIkeWPr+S7peWQkeaCqOWPkemAgeW4
puacieivpeW4kOaIt+eahOmTtuihjOS/oeaBrw0K6K+m57uG5L+h5oGv77yM5Lul5L6/5oKo5ZCR
6ZO26KGM56Gu6K6k77yMDQoNCuivt+W4ruWKqeaIke+8jOaIkeWwhuS4jeiDnOaEn+a/gA0K56Wd
5L2g5pyJ576O5aW955qE5LiA5aSp44CCDQrku47oib7nkLMNCg0KDQpIZWxsbyAgLi4NCg0KSG93
IGRvIHlvdSBkbyBvdmVyIHRoZXJlPyBJIGhvcGUgeW91IGFyZSBkb2luZyB3ZWxsPw0KTXkgbmFt
ZSBpcyBNYWRhbSBJcmVuZS4gKDI4IHllYXJzIG9sZCApLCBpIGFtIGEgd2lkb3cgZnJvbSBHYW1i
aWEsIHRoZSB3aWZlDQpvZiBsYXRlIEVuZy4gQmVybmFyZCBCYWthcnkgWmFrYXJpYS4gdGhlIERp
cmVjdG9yIG9mIEJhamFtIEVudGVycHJpc2UNCihCdWlsZGluZyBDb25zdHJ1Y3Rpb24gQ29tcGFu
eSBpbiBHYW1iaWEpIGFsc28gdGhlIENFTyBvZiBCZXJuYXJkDQpJbXBvcnQgYW5kIEV4cG9ydCAo
R0FNQklBKS4NCg0KQXMgYSBtYXR0ZXIgb2YgZmFjdCBteSBodXNiYW5kIGRpZWQgZHVlIHRvIHRo
ZSBDb3JvbmFsIHZpcnVzMTkgb24gdGhpcw0KZGF0ZSA1dGggb2YgRGVjZW1iZXIgMjAxOSBhZnRl
ciBoZSB0cmF2ZWxlZCB0byBGcmFuY2UgZm9yIGFuIG9mZmljaWFsDQptZWV0aW5nIGFuZCBoZSBs
ZWZ0IG1lIHdpdGggb3VyIDJ5ZWFycyBhbmQgNiBtb250aHMgZGF1Z2h0ZXIsDQpBZnRlciB0aGUg
ZGVhdGggb2YgbXkgaHVzYmFuZCAgYXMgYSByZXN1bHQgb2YgQ29yb25hbC12aXJ1cyAxOSwgaGlz
IGJyb3RoZXIgKE15DQpIdXNiYW5kIGJyb3RoZXIgKSB3aG8gaXMgdGhlIHB1cmNoYXNpbmcgYW5k
IG1hcmtldGluZyBzYWxlIG1hbmFnZXIgb2YgbXkgbGF0ZQ0KSHVzYmFuZHMgY29tcGFueSBuYW1l
ZCAoTXIuIEphbWVzIFRva3VuYm8gT3JpYWRlIFpha2FyaWEpIHdhbnRlZCB0bw0KY29udmVydCBh
bGwgdGhlIHByb3BlcnRpZXMgYW5kIHJlc291cmNlcyBvZiBteSBsYXRlIEh1c2JhbmQgaW50byBo
aXMNCmFjY291bnQgYW5kIGR1ZSB0byB0aGF0IGkgZGlkIGhhdmUgYSBtYWxlIGNoaWxkIHdoaWNo
IGkgcXVhcnJlbGVkIHdpdGgNCmhpbSBhbmQgaXQgbWFkZSBoaW0gdG8gbGF5IGhpcyBhbmdlciBv
biBtZSB0bw0KdGhlIGV4dGVudCBvZiBoaXJpbmcgYW4gYXNzYXNzaW5zIHRvIGtpbGwgbWUgYnV0
IHRvIEdvZCBiZSB0aGUgZ2xvcnkgaQ0Kc3VjY2VlZGVkIGJ5IG1ha2luZyBteSB3YXkgdG8gYW5v
dGhlciBjb3VudHJ5IGNhbGxlZCAgQnVya2luYSBmYXNvDQp3aGVyZSB3ZSBhcmUgbGl2aW5nIGlu
IGEgY2h1cmNoICBmb3Igb3VyIGRlYXIgbGlmZS4NCkhvbmVzdGx5IHdlIGRvIGxpdmUgYSBmZWFy
ZnVsIGxpZmUgZXZlbiBoZXJlIGluIEJ1cmtpbmEgZmFzbyBiZWNhdXNlDQpvZiB0aG9zZSBBc3Nh
c3NpbnMgY29taW5nIGFmdGVyIHVzIC4NCg0KQWN0dWFsbHkgd2hhdCBJIHdhbnQgdG8gZGlzY3Vz
cyB3aXRoIHlvdSBpcyBhYm91dCBteSBwZXJzb25hbCBpc3N1ZQ0KY29uY2VybiB0aGUgIGZ1bmQg
dGhhdCAgbXkgbGF0ZSBIdXNiYW5kIGRlcG9zaXRlZCBpbiBhIGJhbmsgb3V0c2lkZSBteQ0KY291
bnRyeSBMb25kb24gb24gbXkgbmFtZSBhcyB0aGUgbmV4dCBvZiBraW5zIHdvcnRoICQ0LjUgTWls
bGlvbg0KdW5pdGVkIHN0YXRlIGRvbGxhcnMgLA0KSSBuZWVkIHlvdXIgYXNzaXN0YW5jZSB0byBo
ZWxwIG1lIHRvIHRyYW5zZmVyIHRoZXNlIG1vbmV5IGludG8geW91cg0KYWNjb3VudCBhbmQgdG8g
aW52ZXN0IHRoZXNlIGZ1bmRzIGluIHlvdXIgY291bnRyeSBhcyBpIHdhbnQgdGhlc2UNCm1vbmV5
IHRvIGJlIHRyYW5zZmVycmVkIGludG8gZm9yZWlnbiBjb3VudHJ5DQpJICBoYXZlIGFscmVhZHkg
IG5vdGlmaWVkICB0aGUgYmFuayBvbiBtYWlsIGFib3V0IHRoZSBkZWF0aCBvZiBteQ0KSHVzYmFu
ZCBhbmQgbXkgYWltIHRvIHRyYW5zZmVyIHRoZXNlIGZ1bmQgaW50byBhbm90aGVyIGFjY291bnQg
d2hpY2gNCnRoZXkgd2VyZSAgc3VycHJpc2UgZm9yIGhpcyBkZWF0aCBhbmQgdGhleSBjb25maXJt
ZWQgdG8gbWUgdGhhdCBteQ0KSHVzYmFuZCAgd2FzIHRoZWlyIGdvb2QgY3VzdG9tZXIgYW5kIHRo
ZXkgYWxzbyBjb25maXJtZWQgdG8gbWUgdGhhdA0KdGhlcmUgaXMgYW4gYWNjb3VudCBvbiBteSBu
YW1lIGFzIHRoZSBuZXh0IG9mIGtpbnMgYW5kIHRoZXkgdG9sZCBtZSB0bw0KcHJlc2VudCBzb21l
b25lIHdobyB3aWxsIHN0YW5kIG9uIG15IGJlaGFsZiBhcyBteSAgdHJ1c3RlZSBhbmQgbXkNCnBh
cnRuZXIgZm9yIHRoZW0gdG8gdHJhbnNmZXIgdGhlc2UgbW9uZXkgaW50byBhbnkgYWNjb3VudCBv
ZiBteQ0KY2hvaWNlLA0KDQpQbGVhc2UgaSB3YW50IHlvdSB0byBoZWxwIG1lIHRvIHN0YW5kIGFz
IG15IHRydXN0ZWUgYW5kIG15IHBhcnRuZXIgc28NCnRoYXQgdGhlIGJhbmsgd2lsbCB0cmFuc2Zl
ciB0aGVzZSBtb25leSBpbnRvIHlvdXIgYWNjb3VudCBzbyB0aGF0IHdlDQpjYW4gY29tZSBvdmVy
IHRvIHlvdXIgY291bnRyeSAgdG8gcmVnYWluIG91ciBmcmVlZG9tIHBsZWFzZSBpIGRvbnQNCndh
bnQgYW55dGhpbmcgdGhhdCB3aWxsIGhhcm0gdGhpcyBteSBkdWFnaHRlcg0KDQpQbGVhc2UgaGVs
cCBtZSwgSSBhbSBzaW5jZXJlIHRvIHlvdSBhbmQgSSB3YW50IHRvIGJlIG1lbWJlciBvZiB5b3Vy
DQpmYW1pbHkgYXMgd2VsbCBpZiB5b3Ugd291bGRuJ3QgbWluZCB0byBhY2NlcHQgdXMgYW5kIGxl
YWQgdXMgIHRvIGEgIGJldHRlcg0KZnV0dXJlIGluIHlvdXIgY291bnRyeS4NCg0KVGhlcmVmb3Jl
LCBJIHNoYWxsIGdpdmUgeW91IHRoZSBiYW5rIGNvbnRhY3QgYW5kIG90aGVyIG5lY2Vzc2FyeQ0K
aW5mb3JtYXRpb24gaW4gbXkgbmV4dCBlbWFpbCBpZiB5b3Ugd2lsbCBvbmx5IHByb21pc2UgbWUg
dGhhdCB5b3Ugd2lsbA0Kbm90L25ldmVyIGJldHJheSBtZSAgb3IgZGlzY2xvc2VkIHRoaXMgbWF0
dGVyIHRvIGFueWJvZHkgZm9yIHNlY3VyaXR5DQpyZWFzb24gYmVjdWFzZSAgdGhlc2UgbW9uZXkg
aXMgdGhlIG9ubHkgaG9wZSBpIGhhdmUgZm9yIHN1cnZpdmFsIG9uDQplYXJ0aCB3aXRoIG15IGRh
dWdodGVyIHNpbmNlIEkgaGF2ZSBsb3N0IG15IEh1c2JhbmQuDQoNCk1vcmVvdmVyIGJlZm9yZSBp
IHNlbmQgeW91IHRoZSBiYW5rIGFuZCBhY2NvdW50IGRldGFpbHMgaSB3aWxsIGxpa2UNCnlvdSB0
byBzZW5kIG1lIHlvdXIgZGF0YSBiZWxvdyBzbyB0aGF0IGkgd2lsbCBiZSBmdWxseSBzdXJlIHRo
YXQgaSBhbQ0Kbm90IHRydXN0aW5nIHRoZSB3cm9uZyBwZXJzb24uDQphbmQgaXQgd2lsbCBhbHNv
IGdpdmUgbWUgdGhlIG1pbmQgdG8gc2VuZCB5b3UgdGhlIGJhbmsgY29udGFjdCBmb3IgeW91DQp0
byBjb21tdW5pY2F0ZSB3aXRoIHRoZW0gZm9yIG1vcmUgdmVyaWZpY2F0aW9uIGFuZCBmb3IgeW91
IHRvIGNvbmZpcm0NCmZyb20gdGhlIGJhbmsgYWJvdXQgdGhpcyBmdW5kLiBhbmQNCnRvIGtub3cg
eW91IG1vcmUgYmV0dGVyIGFuZCBpIHNoYWxsIGdpdmUgeW91IDI1IHBlcmNlbnQgb2YgdGhlIHRv
dGFsDQptb25leSBhZnRlciB0aGUgdGhlIHRyYW5zZmVyIGFzIGFzIGEgY29tcGVuc2F0aW9uDQoN
Cg0KMS4gRnVsbCBOYW1lOiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4NCjIuIEFkZHJlc3M6IC4u
Li4uLi4uLi4uLi4uLi4uLg0KMy4gTmF0aW9uYWxpdHk6IC4uLi4uLi4uLi4uIFNleC4uLi4uLi4u
Li4uLi4uLi4NCjQuIEFnZTouLi4uLi4uLi4uLiBEYXRlIG9mIEJpcnRoOi4uLi4uLi4uLi4uLi4u
Li4NCjUuIE9jY3VwYXRpb246Li4uLi4uLi4uLi4uLi4uLi4uLg0KLi4uLi4NCjYuIFBob25lOiAu
Li4uLi4uLi4uLiBGYXg6Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KNy4gU3RhdGUgb2YgT3Jp
Z2luOiAuLi4uLi4uQ291bnRyeTouLi4uLi4uLi4uLi4uLg0KOC4gT2NjdXBhdGlvbjouLi4uLi4u
Li4uLi4uLi4uLi4uDQouLi4uLi4uLi4uLi4uLi4uDQo5LiBNYXJpdGFsIHN0YXR1cy4uLi4uLi4u
Li4uIEUtbWFpbCBhZGRyZXNzJ3M6IC4uLi4uLi4uLi4uLg0KMTAuIFNjYW4gY29weSBvZiB5b3Vy
IElEIGNhcmQgb3IgRHJpdmluZyBMaWNlbnNlL1Bob3RvOi4uLi4uLi4uLi4uLg0KREVDTEFSQVRJ
T046DQoNCk1lYW53aGlsZSwgeW91IGNhbiByZWFjaCBtZSB0aHJvdWdoIG15IHBhc3RvcixoaXMg
bmFtZSBpcyBQYXN0b3IgUGF1bA0KYW55IHRpbWUgeW91IGNhbGwsIHRlbGwgaGltIHRoYXQgeW91
IHdhbnQgdG8gc3BlYWsgd2l0aCBtZSBiZWNhdXNlDQpyaWdodCBub3cgaSBhbSBsaXZpbmcgaW4g
dGhlIGNodXJjaCBoZXJlIGluIEJ1cmtpbmEgZmFzbyBhbmQgaSBkb24ndA0Kd2FudCB0byBzdGF5
IGhlcmUgYW55IGxvbmdlciBoaXMgcGhvbmUgbnVtYmVyIGlzIHRoaXMoKzIyNiA3NTIxMzY0NikN
Cg0KSSB3aWxsIHN0b3AgaGVyZSBhbmQgaSB3aWxsIGJlIHdhaXRpbmcgZm9yIHlvdXIgcmVwbHkg
YW5kIGZlZWwgZnJlZSB0bw0KYXNrIGFueSB0aGluZyB5b3Ugd2FudCB0byBrbm93IGFib3V0IG1l
IGFuZCBzZW5kIG1lIHlvdXIgZGF0YSBhcyBpDQpyZXF1ZXN0ZWQgc28gdGhhdCBpIGNhbiBzZW5k
IHlvdSB0aGUgYmFuayBpbmZvcm1hdGlvbiB3aXRoIHRoZSBhY2NvdW50DQpkZXRhaWxzIHNvIHRo
YXQgeW91IHdpbGwgY29uZmlybSBmcm9tIHRoZSBiYW5rLA0KDQpQbGVhc2UgaGVscCBtZSwgSSB3
b3VsZCBiZSBoaWdobHkgYXBwcmVjaWF0ZWQNCkhhdmUgbmljZSBkYXkuDQpGcm9tIElyZW5lDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWls
aW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==

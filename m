Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04391B21C2
	for <lists+kexec@lfdr.de>; Tue, 21 Apr 2020 10:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:MIME-Version:Message-ID:Date:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jp+a794pLD26nYwUe8PflI454H2iQkCnCCM3FigOCWY=; b=NzWASJGjJSOZBIuE4y8RBrzQC
	l29IHKrkb+x0wo8yCUp0Yv3JLW7n6CNxaCZ+iOYloIVreFbdyWIAZXJFTLubwnzahkkQiRrvlEfmx
	T3nsmfMWh9TV8UJdRkMegaZ3Mmbz1tgS2oaLhKz6SSjtgS0SBLLjXjh8sjTEVImnjVdQXqhjCfk9V
	mUBOAUdenoLwf+DwtabBAFT5TZ0hhJLxM2dfp5FMQg73zgf8dkyGF+raJk6b2W9cA+ZB52WyvKdUQ
	yCA+A/WQ2sX75bskncRZRoioM9pYeQ3wOK2u2Cj8z5owesEL26/kDAola4x+JuxMA+1DIPJsnH1FX
	GY2/A1a3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoOF-0006Pj-Mr; Tue, 21 Apr 2020 08:36:23 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXUF-0005jQ-I5
 for kexec@lists.infradead.org; Mon, 20 Apr 2020 14:33:29 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200420143324euoutp02a24c96b27dc0e048eda0f5a55200dd7e~HjbWeBsey0893408934euoutp02d;
 Mon, 20 Apr 2020 14:33:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200420143324euoutp02a24c96b27dc0e048eda0f5a55200dd7e~HjbWeBsey0893408934euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587393204;
 bh=Ck5j0VnQb11JKvryfgEGOKf7Q7NGA2n+XvaAcf8076g=;
 h=From:To:Cc:Subject:In-Reply-To:Date:References:From;
 b=jNrPhKadR78hrF7AzKzAnX05z7yAI4OHrUPAYKaIW2XRt8aOuKlgfKcak9TF3Up27
 qwaZlhiRt4vmba4i1GlXVEaA+T4S4xJvYi6TthWAkCq7CiE4rStLJMELKJFydnOXVb
 B5jqUhnhwhIWPVK9NDuwBAY5NhsBcuuK0DEiqQac=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200420143324eucas1p1c6600ae38a3c13385d29b0dd224ea775~HjbWQbrbO2665026650eucas1p1F;
 Mon, 20 Apr 2020 14:33:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C3.EF.61286.4B2BD9E5; Mon, 20
 Apr 2020 15:33:24 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200420143324eucas1p2f20752f4ec6ece9fbf61e5fb57f3360d~HjbV8BKjx1195311953eucas1p2k;
 Mon, 20 Apr 2020 14:33:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200420143324eusmtrp2ee9391680bff8e93d5d9a9bd6ba5bc89~HjbV7cgzV2895428954eusmtrp2G;
 Mon, 20 Apr 2020 14:33:24 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-97-5e9db2b400e5
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F3.37.07950.4B2BD9E5; Mon, 20
 Apr 2020 15:33:24 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200420143324eusmtip2dc350345d411230df6487568dc16978f~HjbVvJI_83042230422eusmtip20;
 Mon, 20 Apr 2020 14:33:24 +0000 (GMT)
From: Lukasz Stelmach <l.stelmach@samsung.com>
To: <horms@verge.net.au>
Subject: [PATCH v2] arm: redefine OPT_APPEND and OPT_RAMDISK
In-Reply-To: <20200416084441.GA16024@vergenet.net>
Date: Mon, 20 Apr 2020 16:33:11 +0200
Message-ID: <dleftjmu76ns60.fsf%l.stelmach@samsung.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJKsWRmVeSWpSXmKPExsWy7djPc7pbNs2NM5j1RMWieetXRovdp78y
 OTB5bF5S7zHn5zeWAKYoLpuU1JzMstQifbsEroyjfXOYCn7xVizadIm9gfEndxcjJ4eEgInE
 rXnv2EFsIYEVjBIn71t3MXIB2V8YJXbtmcMM4XxmlJjafJcFpmPZs6mMEInljBJv/p5ng3Ce
 M0r0Nt0DquLgYBPQk1i7NgKkQURAQuLh6iVgK5gFZCWWbdrBBmILC9hI/Nq+mg2knFPASGLH
 T0mQMIuAqsSDlw9YQWxeAXOJrY9Og7WKClhKbHlxnx0iLihxcuYTFoiRuRIzz78Bu0dCoJ9d
 omXNdmaIQ10kZv+dzQphC0u8Or6FHcKWkfi/cz4TyF4JgXqJyZPMIHp7GCW2zfkB9aS1xJ1z
 v9ggbEeJYxd/sELU80nceCsIsZdPYtK26cwQYV6JjjYhiGoViXX9e6CmSEn0vlrBCGF7SLTt
 nMMCCakXjBK7N71nmcCoMAvJO7OQvDMLaCyzgKbE+l36EGFtiWULXzND2LYS69a9Z1nAyLqK
 UTy1tDg3PbXYMC+1XK84Mbe4NC9dLzk/dxMjMJGc/nf80w7Gr5eSDjEKcDAq8fBG1M2NE2JN
 LCuuzD3EqAI06dGG1RcYpVjy8vNSlUR4U2yA0rwpiZVVqUX58UWlOanFhxilOViUxHmNF72M
 FRJITyxJzU5NLUgtgskycXBKNTA2cMoWWk/+LcTzlqFl9qwtN3YnNxeEFoi6HH0fnfqEd92D
 mNYrZfa/7hc2dE37b59uNsfokzzH6Venmje6rv2q8yqRn29yWYJD8MffTo9maGWd+7/y9+Sa
 9zLe/0R+yy7/5b38ZESzsn+i8HYt7bd5R88X2kVNd+GWj/j7IIb1+jlDgQ951deUWIozEg21
 mIuKEwHrlcT1LAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIIsWRmVeSWpSXmKPExsVy+t/xe7pbNs2NMzh2ltuieetXRovdp78y
 OTB5bF5S7zHn5zeWAKYoPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU
 1JzMstQifbsEvYyjfXOYCn7xVizadIm9gfEndxcjJ4eEgInEsmdTGUFsIYGljBIT17F1MXIA
 xaUkVs5NhygRlvhzrQsozAVU8pRR4veELYwgNWwCehJr10aA1IgISEg8XL2EHcRmFpCVWLZp
 BxuILSxgI/Fr+2qwkZwCRhI7fkpCjHnBKLF703sWkBoWAVWJBy8fsILYvALmElsfnQabIypg
 KbHlxX12iLigxMmZT1gg5mdLfF39nHkCo8AsJKlZSFKzgNYxC2hKrN+lDxHWlli28DUzhG0r
 sW7de5YFjKyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAqNg27GfW3Ywdr0LPsQowMGoxMMb
 UTc3Tog1say4MvcQowrQmEcbVl9glGLJy89LVRLhTbEBSvOmJFZWpRblxxeV5qQWH2I0Bfpt
 IrOUaHI+MHLzSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwsp+Z
 aHRK9RzvmW9nl7z6zxuy8PIptseb5v76yLCh3nv2Ml5t1txtXYe79wRf+LdR88icTp3XG/8n
 87/O/NN7wSNNQrpu6cTQti3H+B6YfjlUGPS8+UTZO0b5pHd3Vj0S5UwvXu/RyOidfqb/yJbJ
 mRppl5N1Tgo4lXl8eBTzWujUEo5TPyanKCuxFGckGmoxFxUnAgCCJrJgpAIAAA==
X-CMS-MailID: 20200420143324eucas1p2f20752f4ec6ece9fbf61e5fb57f3360d
X-Msg-Generator: CA
X-RootMTR: 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415105859eucas1p2db849d89aa9a338077a01784f73dad52
References: <20200416084441.GA16024@vergenet.net>
 <20200414085224.7069-1-l.stelmach@samsung.com>
 <CGME20200415105859eucas1p2db849d89aa9a338077a01784f73dad52@eucas1p2.samsung.com>
 <20200415105845.22067-1-l.stelmach@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_073327_919144_D1CEAF02 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Mailman-Approved-At: Tue, 21 Apr 2020 01:36:18 -0700
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
Cc: kexec@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8638328130123976302=="
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

--===============8638328130123976302==
Content-Type: multipart/signed; boundary="=-=-="; micalg="pgp-sha256";
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> On Wed, Apr 15, 2020 at 12:58:45PM +0200, =C5=81ukasz Stelmach wrote:
>> Redefine OPT_APPEND to avoid clash with OPT_KEXEC_SYSCALL_AUTO.
>> Redefine OPT_RAMDISK to avoid such problems in the future
>>
>> Signed-off-by: =C5=81ukasz Stelmach <l.stelmach at samsung.com>
>
> I am slightly concerned that this will break things for users.
> But OTOH perhaps we already broke things when adding
> OPT_KEXEC_SYSCALL_AUTO.
> Do you have any thoughts on this?

I am aware of this, but the current appears to be broken more. When I
was using '-a' it didn't work as advertised in the usage message. Short
*arch* options aren't documented there, so I suppose most people didn't
use them. ARM is the only architecture that supports short options by
defining OPT_* as characters. HPPA appears to be using them in the
optstring (copied from ARM?) but not in OPT_*. Would you like me to
clean this up too in v3?

In summary: undocumented, on one platform.

P.S. Please, cc me. I am not subscribed to the list.
=2D-=20
=C5=81ukasz Stelmach
Samsung R&D Institute Poland
Samsung Electronics

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEXpuyqjq9kGEVr9UQsK4enJilgBAFAl6dsqcACgkQsK4enJil
gBCwnwf+LMYEqxAgSDJ5GXBStjQQaQscJPPVtESlndKLZtwH8I9O5wUnmUM2CNUp
LnBf7TTmLjnKF6AmF7gJnQ5eaMkKOPi+wiYGg+3uMPnq13Bi8Qrw8OtWwu1Te7Fr
yFsXPAa6T/dDqvj3nOQ27SImBFg2QBr3O/cTbUF+32fPB58y+dngEiznFs9wT+1/
qrt5FsZA3PPoV8fP2SBm0deBhD1DMToSgsW+u2xJ3x5s1PDb4P/b2tC3BlQ6hPvh
zCdpNOWJ7JVxwS7RhhcTVSUsZQCbbdw9szwg8wEyaviw7PUr34JksDB/YizjPFpB
PYh6zTAzE92mWti/iSDX49itk89c1Q==
=WpTA
-----END PGP SIGNATURE-----
--=-=-=--


--===============8638328130123976302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

--===============8638328130123976302==--


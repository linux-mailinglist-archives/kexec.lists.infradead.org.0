Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B924ABD09
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 17:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DLz88e5X96gGiqHMlJggeP7ok2qjl2qWYciHffHIvY=; b=g8okDxv2M5Ywa+
	LtNq5C2SULgONlAtXGf8Sx94XrOUQt1IAD5SnSkYlsgk+6lEoHUbkUnvJCj7PN4fmp9CIPoZSXNMN
	i2drx/bvWwzThphkwR8d3fs/ScKjH/KH1+SqQH68TJkcDeX6ccfE0wQlvxSKp7c+DzLFmI6oFsJ54
	ftFFPN7fQ/2n34avn0pJZ+poFit8QYa+Ab/m9AfdDLQ9V35h9U05f2WKGH5AmgymxARFu8xkd5Pa3
	8kMmftneNRZSZcXdKk+tL1ujATcH0ENtQnsqw5AikIvcCDeo8onBCR3ffw/TMzATGgB8y61d/FSIt
	XnbeEtQaaKsYCRQvDsWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GYi-00030m-Ku; Fri, 06 Sep 2019 15:54:00 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GYe-00030T-Nw
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 15:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567785222;
 bh=ILLsMovo2wzJhsqraHW1dS8hVbQROMHnCcy19D9vULw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=DTNT4RAxXFWUo3Sn+lcsDKLjK4NfZNnNoJTkjluapvZ2KcUK5d9FiJavqPn4UvuOm
 CFKL1xIynsMJnrirGYUmSji9ImGMQKJlYTVEWPDN3tF4tlerfAQ6z1NsMaw8Ew2Ejt
 s5B/u0EmpVJDGoWDMWkvgSS/QObPERyolDmAPRkM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.135.139]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LgvEY-1iSjgG2Fy2-00oBcR; Fri, 06
 Sep 2019 17:53:42 +0200
Subject: Re: [PATCH v5 0/7] kexec: add generic support for elf kernel images
To: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
References: <20190823194919.30916-1-svens@stackframe.org>
From: Helge Deller <deller@gmx.de>
Openpgp: preference=signencrypt
Autocrypt: addr=deller@gmx.de; keydata=
 xsBNBFDPIPYBCAC6PdtagIE06GASPWQJtfXiIzvpBaaNbAGgmd3Iv7x+3g039EV7/zJ1do/a
 y9jNEDn29j0/jyd0A9zMzWEmNO4JRwkMd5Z0h6APvlm2D8XhI94r/8stwroXOQ8yBpBcP0yX
 +sqRm2UXgoYWL0KEGbL4XwzpDCCapt+kmarND12oFj30M1xhTjuFe0hkhyNHkLe8g6MC0xNg
 KW3x7B74Rk829TTAtj03KP7oA+dqsp5hPlt/hZO0Lr0kSAxf3kxtaNA7+Z0LLiBqZ1nUerBh
 OdiCasCF82vQ4/y8rUaKotXqdhGwD76YZry9AQ9p6ccqKaYEzWis078Wsj7p0UtHoYDbABEB
 AAHNHEhlbGdlIERlbGxlciA8ZGVsbGVyQGdteC5kZT7CwJIEEwECADwCGwMGCwkIBwMCBhUI
 AgkKCwQWAgMBAh4BAheAFiEE9M/0wAvkPPtRU6Boh8nBUbUeOGQFAlrHzIICGQEACgkQh8nB
 UbUeOGT1GAgAt+EeoHB4DbAx+pZoGbBYp6ZY8L6211n8fSi7wiwgM5VppucJ+C+wILoPkqiU
 +ZHKlcWRbttER2oBUvKOt0+yDfAGcoZwHS0P+iO3HtxR81h3bosOCwek+TofDXl+TH/WSQJa
 iaitof6iiPZLygzUmmW+aLSSeIAHBunpBetRpFiep1e5zujCglKagsW78Pq0DnzbWugGe26A
 288JcK2W939bT1lZc22D9NhXXRHfX2QdDdrCQY7UsI6g/dAm1d2ldeFlGleqPMdaaQMcv5+E
 vDOur20qjTlenjnR/TFm9tA1zV+K7ePh+JfwKc6BSbELK4EHv8J8WQJjfTphakYLVM7ATQRQ
 zyD2AQgA2SJJapaLvCKdz83MHiTMbyk8yj2AHsuuXdmB30LzEQXjT3JEqj1mpvcEjXrX1B3h
 +0nLUHPI2Q4XWRazrzsseNMGYqfVIhLsK6zT3URPkEAp7R1JxoSiLoh4qOBdJH6AJHex4CWu
 UaSXX5HLqxKl1sq1tO8rq2+hFxY63zbWINvgT0FUEME27Uik9A5t8l9/dmF0CdxKdmrOvGMw
 T770cTt76xUryzM3fAyjtOEVEglkFtVQNM/BN/dnq4jDE5fikLLs8eaJwsWG9k9wQUMtmLpL
 gRXeFPRRK+IT48xuG8rK0g2NOD8aW5ThTkF4apznZe74M7OWr/VbuZbYW443QQARAQABwsBf
 BBgBAgAJBQJQzyD2AhsMAAoJEIfJwVG1HjhkNTgH/idWz2WjLE8DvTi7LvfybzvnXyx6rWUs
 91tXUdCzLuOtjqWVsqBtSaZynfhAjlbqRlrFZQ8i8jRyJY1IwqgvHP6PO9s+rIxKlfFQtqhl
 kR1KUdhNGtiI90sTpi4aeXVsOyG3572KV3dKeFe47ALU6xE5ZL5U2LGhgQkbjr44I3EhPWc/
 lJ/MgLOPkfIUgjRXt0ZcZEN6pAMPU95+u1N52hmqAOQZvyoyUOJFH1siBMAFRbhgWyv+YE2Y
 ZkAyVDL2WxAedQgD/YCCJ+16yXlGYGNAKlvp07SimS6vBEIXk/3h5Vq4Hwgg0Z8+FRGtYZyD
 KrhlU0uMP9QTB5WAUvxvGy8=
Message-ID: <22b40bb7-6f86-0a69-12b2-12d90124173d@gmx.de>
Date: Fri, 6 Sep 2019 17:53:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823194919.30916-1-svens@stackframe.org>
Content-Language: en-US
X-Provags-ID: V03:K1:OZFtsKsC3ERF/tV2tKZQoDZfmR2AcWcPql0X1C/476klrmVLhyw
 WYFwxu6nAbzW3JrUFMveWfNTgXFOTGoay/4On4757N11NkhfKpQMtk6HrJXRXvIQX9A5deJ
 l2Vujvjxarrmed2AD4YyL1OX5+/KTGHuIbwRxD+i6kvujNjmz6jWfOpbgTYzlj1BSJs4TrD
 g7EZ5QlVT9P7KGCA10kVQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tlf8GyQav/0=:/yjdfBHH+XmpBfSgY0KvLa
 Ae74MC9XpL5TS9gK/u57gcVRp7GTIDik13SZPQUa8eu63Zv8oTg9UNBwxQmwQhCfbPI+cgFQH
 RWCKWLs3Yq7Cx4RB4b89nmzFEDYerajr9vn7QKVzPUpIpd7o7xxtuOY4tB+H7v/+obQY52qhl
 HH+Nf93cLt2Cj0jzOMb+fjY0tJCzIUvq4Lg3L6IzsJA6bsjxoa7E32KxfPNJ4wczwxkrDXXsj
 YtMhf8QUQ3xHI9UyKd1J//kqURwwpk6mKZIj8pV6mmfIJ5X/Li8hA/0nRKdylXIpSFWCDCd73
 CsG265G9Uh4vNJPnm66TQEeNAixh+egn/HnR51OcuOdoVGNo5Rm3NfL/vFlaIl3/0ebtm9bC2
 dNvNJXKORy4g3Jb3phwceClPJ33mao7BUqUE5cQVnDzmmeZeVCKTMqycsltRjWXe8VAx0yoSX
 JQ3F02UdbZbqKuzOuwwYvJ9KnYN7c6cRI0PrPlfclvpDU8YK8RTTZ6TpKHIhzmwcd6CzIYmWk
 4k28aDd+iaZh2PhGCjYyGZhlIiuebKXOmYh7BSy51zbclknv6IdBq5vS31nwflilRwUW0RgbQ
 D+9aETtMoWkIT/+9MKInT1XM+ij+H9INfTnpebexs3e+anc5d+u4kCWv17xPEom/b25KYdPqK
 qbobfRF3PLmkknICsXAJq81aoqKdb6h7TN7sSHqMBYfJ+LTUlo+/oYrONJJmiV6zkAnHkt9pR
 GL2SNoSKePBRiUi4df3LjkyWritnZUc5P+TOu/qDUKAQel5molD0rUYfnWT0G4x6e2H9WavBf
 S23nbL9sCxpedL+UYE65uSJc1TQLx23PVv0AYPb72RVRlt/TtlMeXT6EZ2elIkSk2m8+V/w2Q
 AN2RnUcmAY3pimppX45P/SNAOPpxNFPL99B+QdvwXDktC2Rrfp7aseyNPIVZG/kuOh4C1BwjK
 lrZJEbzm/ZpcNNcpGnjnY1AKzydUHe6HwqP9SHUjAVHJXQ42TXO0Q6SZm1rK3mPOQXmgLTi77
 4kyytwwgHdb6rT8RIWg+9f0Xt9zButK/fupskWtMHaetebq90ZWKHnwPUArNdu2Yk2GEiBx1X
 OulV9Qkc5S9zMd5S4OZHdvBnQwbwMuQqEabBmV8bfi/KJ/l5RDS+mFSDJuVpK8HmemuuKR7SU
 +zze4lgccK/wfoO1fgdI10a1gM22tFEmwy1OxyUV3C8HIjPWfUwyMqxY6rFrAkJA+tQ14=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_085357_119652_20C68415 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi all,

This kexec patch series is the groundwork for kexec on the parisc architecture.
Since we want kexec on parisc, I've applied it to my for-next-kexec tree [1],
and can push it to Linus in the next merge window through the parisc tree [2].

If someone has any objections, or if you prefer to take it through
a kexec or powerpc tree, please let me know.

Helge

[1] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next-kexec
[2] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next

On 23.08.19 21:49, Sven Schnelle wrote:
> Changes to v4:
>  - rebase on current powerpc/merge tree
>  - fix syscall name in commit message
>  - remove a few unused #defines in arch/powerpc/kernel/kexec_elf_64.c
>...
>  arch/Kconfig                                  |   3 +
>  arch/powerpc/Kconfig                          |   1 +
>  arch/powerpc/kernel/kexec_elf_64.c            | 545 +-----------------
>  include/linux/kexec.h                         |  23 +
>  kernel/Makefile                               |   1 +
>  .../kexec_elf_64.c => kernel/kexec_elf.c      | 394 +++----------
>  6 files changed, 115 insertions(+), 852 deletions(-)
>  copy arch/powerpc/kernel/kexec_elf_64.c => kernel/kexec_elf.c (50%)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

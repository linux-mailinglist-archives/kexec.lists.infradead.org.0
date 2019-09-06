Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFC7AC245
	for <lists+kexec@lfdr.de>; Sat,  7 Sep 2019 00:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJZ3XFbLjdE6d/j7GXEjiVuUeyr3hQFhnuQER0ac9YE=; b=HmGneh2MMEUPr4
	szvlKJ/l0pMXfUQPk/xZThHS6cSHXD9JZe4SWFa+LwAyiaBgQ6j+LtnHdgSkbPlqbT3iriyWNbtrD
	O3iZDbIZdr6/kf3ggB3T7XyPSMqtQZIaSr8TDlmiz7fDZh3t8DqzsSZt3dCT2SPGaHzw7zIA/OvRc
	jHalyK3L+g6S5XlkTBBHGDkagUvnaUs+Txwd4oZ47ictFJeDfWmV5+vH+678/Xax1b1O3HDvxnQ6x
	52i8tIoBRZ59LMCGLN3KwHA+fmkXuTqAFriI0knxRWTfwuPbzNg/3tCQ3sx6o5ZZtbC+ysaQ88rWj
	qUUVkQHILItmz3WAehLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MIr-0001wm-QY; Fri, 06 Sep 2019 22:02:01 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MIo-0001wR-8v
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 22:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567807309;
 bh=kVUocnhNrCWM8haPThvZCfN3oxSXOIw8fSty7Y0VTOg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=TnzUoo9NnO7De3P+hzZpw/mAOjwFdiXAjtWas/wdeAINHQD64ANVw5IZ3zS1Vb8bB
 iZ2FTBeqvy5Rey7H1EVh4zwbGua391PDthOPgS1uJ3osWLBrqsDYRdAXj1VAQKNsJY
 jeIQZPS5h4K7v5jVqblVmlunAVO1BceeIIKpQ8Q0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.135.139]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MeCpb-1igEkV3S0l-00bKm6; Sat, 07
 Sep 2019 00:01:48 +0200
Subject: Re: [PATCH v5 0/7] kexec: add generic support for elf kernel images
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>
References: <20190823194919.30916-1-svens@stackframe.org>
 <22b40bb7-6f86-0a69-12b2-12d90124173d@gmx.de>
 <87blvxgkqw.fsf@morokweng.localdomain>
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
Message-ID: <ac109a98-8a41-b3b2-9b2e-2bfe5bd3166a@gmx.de>
Date: Sat, 7 Sep 2019 00:01:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87blvxgkqw.fsf@morokweng.localdomain>
Content-Language: en-US
X-Provags-ID: V03:K1:OpY+wRorhXY+5ZVu38MgLwykHvj2jP7yMvfAT3aAJVNv0yewUEx
 gSsM6fUsV5CUsJt/yay1Hh1cnVV1t9xTOIvFn5IBk3wdbfFRpemvdQtf0zlkSLNJ+ispRYx
 AJn5gO5V64bNk1j5juJKrRZqLgcf/Yb/UTQuCQ49a7PmBLxZLT6xD9pnVV/5IqdJSvr3LVd
 w+RSL1MqZD9RDNzl3A4SQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rkYcC0aB/Gw=:KWH4ZFYz3uYoFzPOhZx0UO
 kInbee74645eIiJzPoL6CkjEv8dEcttSW5DTpbqw5Djpdy3MWnWxVsqn+6eyq9lqJmhxufsvz
 LrwHaYzkhJl1Fr8K59XVdpX8739OBBjXOmMBy7x0mC0Cpom9BFDmSBz0trhPMATjLB3RdPi8k
 EheSSui08FoUbunK5foRnWfJqrV13g4a57v2/007Hya9OK3imL7lNJbgl2AMRS38D+wZWdZQj
 7IBB59E41QRljmX+lj/tK9b3Rr52uQ1hu1RKHqbtTypGK3OTxB9UHA541MHur+7OmRXQx7zyX
 Ef7a9Y3sL/OgG5y/hYw/E2IiWAMVeAEQqtf4AZ/wAilN+am9P1i0sfZDVRhyrjDAxIUKHcEOs
 RgVVAuOiCC1UmpGQ3a8kHZxhJrMrYyWoODIbZZXzboTHDYJ1Ew85B6YZvhtZK7gMWMjxZGKso
 yOpUGSSuV4oJ+G4v2DFSsaK2Ua4pztSytPdbTSsrZKb6QChnMfgOb2nHzobIOR5uOTGTJduXd
 dohdPtyVdpign+cYT9NIH2i3bJ7wTXOm14RG8t/77oWMRS6xARMlZvlsSEyfMYZnRxuCuXSxQ
 qR0TwALVULpro+9wnxoNRutpxIIy5elg4y4srrupyWBZ1QLZtsnI7DouF2fC15iFz9Hi+VYRq
 iJWGnVyweto+iPzWNEyIkp0ZAjU5PJ1PDmXOJz1W3va3MgN9mSYGry42UzR3H2K5cLsP10O4T
 rGdC/QCj6ygFPfROyMuS3d9Lhp69HxqNdYVCpa1fvPKz0783Jvd9byzGYOULeHWyvdWjoaCFP
 OD5gNT0TNBHtzPKKDf89iSHRZQyX5gvlzJrGIrD42vE8BbJfRTFZ9fmTkvNS9NHGqhSiTe34j
 A1kFZnA4bHnG3ptNe7OWW3HSwJ2uPRn0u/30JZlbKDnfeDE6YJXrb2EkGGYT9qzfFOUGizOSH
 DubCmP+TqcZnrV8XREYlyXbqqT6C7Qk5Zhf4802n4w3LSmqQUwftIT6LWChiwhKY71qERxNvO
 f6zFLEnyRpea6nmVeOK/BYQO1o4rUbdGH2MjlU3EBT8nxrtXkSbbU7bohoWSc+TGLeMxvHoC2
 sT0psH1u0jpB/QbSb+ULwR6GMJb1q68mv1LzNaZVBZl88/aFlpywOkh5FKuNaiuMa34H5lK7P
 hQeUSvkc8ha+dxVMy0tiUAvsO3fXujvdEYyB0Ak+sC7MO6ksTifDfWxD+ydJ9ak7UWEfk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_150158_652484_5EB74B57 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: kexec@lists.infradead.org, Sven Schnelle <svens@stackframe.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06.09.19 23:47, Thiago Jung Bauermann wrote:
> Helge Deller <deller@gmx.de> writes:
>> This kexec patch series is the groundwork for kexec on the parisc architecture.
>> Since we want kexec on parisc, I've applied it to my for-next-kexec tree [1],
>> and can push it to Linus in the next merge window through the parisc tree [2].
>
> I just had a look at this version and it looks fine to me. Identical to
> the version I reviewed before except for the changes I suggested.
> Thanks, Sven!
>
>> If someone has any objections, or if you prefer to take it through
>> a kexec or powerpc tree, please let me know.
>>
>> Helge
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next-kexec
>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next
>
> I noticed that the first patch is the only one that doesn't have my
> Reviewed-by. If you want, you can add it:
>
> Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>

Thanks for reviewing again!
I added your Reviewed-by to the patches in the for-next tree.

Helge

>
>> On 23.08.19 21:49, Sven Schnelle wrote:
>>> Changes to v4:
>>>  - rebase on current powerpc/merge tree
>>>  - fix syscall name in commit message
>>>  - remove a few unused #defines in arch/powerpc/kernel/kexec_elf_64.c
>>> ...
>>>  arch/Kconfig                                  |   3 +
>>>  arch/powerpc/Kconfig                          |   1 +
>>>  arch/powerpc/kernel/kexec_elf_64.c            | 545 +-----------------
>>>  include/linux/kexec.h                         |  23 +
>>>  kernel/Makefile                               |   1 +
>>>  .../kexec_elf_64.c => kernel/kexec_elf.c      | 394 +++----------
>>>  6 files changed, 115 insertions(+), 852 deletions(-)
>>>  copy arch/powerpc/kernel/kexec_elf_64.c => kernel/kexec_elf.c (50%)
>
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

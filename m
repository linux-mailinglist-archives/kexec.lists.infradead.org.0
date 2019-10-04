Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1219CB7A1
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 11:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tB4sEPbQcQ+mGoBQ6+0OXl+tXYdT7coTgwlNGBj6Voc=; b=ZBMuH5RL4+vgCTBmeB9rD+S3A
	+UxVqa4Prhl1vRWvR6MFuZSyYV28v5k8gk/f11SUzRjEF3+4Cjzowcb4HGQmkwFEIXoliWpApyHfC
	zEy0BD10YezhjvtuwRFZff+EDtwFAM2SloObWeS4Iy7U1HzX+2pn/kyiwhF1zVS9UyoG59WDFOSLZ
	4gsNzz7mruU4EMVjlSvoWUfvmeF3k6vl6Zqa7j/UXb2N9uZ3ekfg7W1udLDtfVYSz7XMefVJDnohd
	Svg7luk1MaI5Bp9YtjriZPLu+jL95cGFedwcOCe25kbBCW3ivl/x9gWefUSIe2NjxkAvGP+j6OcKE
	Tw/o0LfHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKFD-0006Ya-BV; Fri, 04 Oct 2019 09:51:27 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKFA-0006WX-0c
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 09:51:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570182669;
 bh=rbD07GaH+cw8q9vftJj2CH5zBn0UedVleiX8ouRW6M4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=h4vdIr35FUD073av3ZQ20mvSdD3VrMDQGVtwOnmLP9ltLv5N997XtWVdgheB+EpSX
 orTEyiT93M0EtOfO3nQmMFfR4nqtnrCIPMNpFKMWVy+Fx1t5KWwsOoALR1h9wfWlq5
 f2fXXCjxsJBH+s/EmAY3gQer3QqpVxyuuL2d3nQ8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.137.238]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mq2nA-1hl8AQ3Itm-00nCyG; Fri, 04
 Oct 2019 11:51:09 +0200
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
To: Simon Horman <horms@verge.net.au>
References: <20191001151416.GA25667@ls3530.fritz.box>
 <20191003081406.5qmzlmlpwobydfok@verge.net.au>
 <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
 <20191004093737.wftu7iat2gk3abq6@verge.net.au>
From: Helge Deller <deller@gmx.de>
Message-ID: <8157edc8-69cb-33b8-ae1c-7a0d80845c9d@gmx.de>
Date: Fri, 4 Oct 2019 11:51:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191004093737.wftu7iat2gk3abq6@verge.net.au>
Content-Language: en-US
X-Provags-ID: V03:K1:Ig1koDgIfX57yTCdNZHho9FJtyxAsfLDI8aczuUp4RYCuj/TGQd
 jiWnzUS/LYBIMKgcoXD6GdOlqEWz7hyYcVxEvN7+T9m9KwBCLaVt+xu5mhlJQzeNn9B6u21
 T9MsobY+qhCzbN4fnozK+9/+BzmnGUuFOtWsMib9niN+qYMXlWLPhstYU0EgHcoptsKCdHo
 kLgkiDi0VCTlZAbgVG8Fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hm26HEedfmk=:5uG+V/vFq87eE0Nj3OpLcW
 l+NXLtVGfoP2tmJkVNqcp3l2SomK2VI5s30bfEJWYxiVJdJ7U0vmmWdv1vhg5Ry70alTp3pBI
 DJVgJ+7vyHhIlAzJawdCc33n8IXiKH6FN805aqHBHeP7QvPt3NsCDISOqPosEAby+NIGO2SkT
 Y5FQXrWC1RSmw8JEQZNYrdl5Q7D4p2eH6WIMzwrsKionjyOHSYOHhTg2JGGOZKqHLZLY0lV/+
 H5W9ucySwrUyJlFITKy7EZF0+HY9LAIjZAwuCzj/sxDqKEQAcrrJyFbiiaiK6/DH1m6Ir3JDN
 fEykSvg8SIfuvbQIrgY8wOWiYMnftdZcFkKtdHiZuep8EEjpZSW7OmFcsnpOJDqGRbTC3N/Iq
 PTlu5hllbOiNwOXBcdHsjX2QHconsGQRQKPlY26gGfm+6UvFKlr9VlKJqGM6M//C8r9ahwSCW
 9fjCg7W1yjLWzYb+BLziKSUQ0ERB0lt2OXBjZqpHev2LTnO7ZJRNIYoUgdRp7fiHv8r2bFKuL
 ZDBkNKOviBRYvh7J3MFkkrnGra/vZJKgIaS0DNL7uxdryQjQkyrt2TzggdhpYbvj1cOsBnKCq
 Hfv6VzgSKkpdoW4jBDWlT2R4BI7PnyqTvWpQbYgt0xCsbGn0gE0zKMgb/i/LmtvEQxNmuHyBI
 L5+8VSGlwuygEf+4grvSqY+PDOvuaPQSPSy+addyMzoJZIV4pQU4KW03Fxr635lekeOAHb3Kt
 tADe1aTAbvr5aHtZ4JRkS7jj3lNgVye45AgPFcdu4b64QVNNN3uYBRkjODQ0Wcf2RaL9OuDwK
 iaHQLbXywsdsq+ec1M9N3BoC+pcqihp0n+SGDfV3tDaZm4EP2E7kwYA7fG1lMyCr5AwYBljtq
 RUugt60RnYnd/AMadewASEl1aebUgOfo33WoB7zIZ6LPIPH47jWV4WqYAfl1gRSCnsPWKGLwb
 baQzha8dSfscvn0o42vHBlShtb6QrZ4898Q+p3pJvtlbJ7Mnq7//ojo2n67CUntNZn840LqoO
 ongS4g4JdlaHJ+3n87MuFZfp0jk9oYgaVhUd6wO+WOAdKLQCmyb8m5DI8PaKThVp5U0VlfGXf
 RmfnPEFp+I+Aw4YqOstAN1r4zBSYROa6tYp5dt5kRhFeENubAWM8hwwXAZXbGbSV3atfbriHd
 hGeZzEvoRmEmOU3YcHVj7lbzZOLVlXZsjZ0DU1ydHFy2fw1EtvNzLGmZXHPzj2yUufhvwn+rH
 0vvckT0SkORvRCYd5RJsCqZYe/HxojgiA8f5rZg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_025124_476304_C06F9251 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04.10.19 11:37, Simon Horman wrote:
> On Thu, Oct 03, 2019 at 10:52:37AM +0200, Helge Deller wrote:
>> On 03.10.19 10:14, Simon Horman wrote:
>>> On Tue, Oct 01, 2019 at 05:14:16PM +0200, Helge Deller wrote:
>>>> When compiling kexec-tools on a 32-bit platform, assigning an
>>>> (unsigned long long) value to an (unsigned long) variable creates
>>>> this warning:
>>>>
>>>> elf_info.c: In function 'read_phys_offset_elf_kcore':
>>>> elf_info.c:805:14: warning: conversion from 'long long unsigned int' to 'long unsigned int' changes value from '18446744073709551615' to '4294967295'
>>>>     805 |  *phys_off = UINT64_MAX;
>>>>         |              ^~~~~~~~~~
>>>>
>>>> Fix it by casting UINT64_MAX to (unsigned long) before storing it to *phys_off.
>>>>
>>>> Signed-off-by: Helge Deller <deller@gmx.de>
>>>>
>>>> diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
>>>> index 2bce5cb..4d16983 100644
>>>> --- a/util_lib/elf_info.c
>>>> +++ b/util_lib/elf_info.c
>>>> @@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
>>>>    {
>>>>    	int ret;
>>>>
>>>> -	*phys_off = UINT64_MAX;
>>>> +	*phys_off = (unsigned long) UINT64_MAX;
>>>
>>> This seems to mask the problem that UINT64_MAX is not the right
>>> initialiser for unsigned long values on 32-bit platforms.
>>> Could we consider using UINT64_MAX from limits.h instead?
>>
>> UINT64 means it is a 64bit value, while "unsigned long" is either 32-bit,
>> 64bit (or maybe in the future even 128bit?).
>> Even assigning UINT32_MAX on a 32bit platform might be wrong.
>> So I think the cast above is probably the best solution.
>
> Sorry, I made a typo above.
> What I meant is, can we consider using ULONG_MAX.

Yes, that's probably ok.

Helge

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

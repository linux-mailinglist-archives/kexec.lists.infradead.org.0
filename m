Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5FCC9A3B
	for <lists+kexec@lfdr.de>; Thu,  3 Oct 2019 10:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uzH2pcCpUvfiQ5gjbmCO1zgNaDKxL8DuWOtvgzLhvRc=; b=lq9iWYN8pWS9SR0GSWfolLI5p
	UAjIIfdBM6hR6c2nDcclbhDgtbh65JgL8muvCn5UjBk+kUi3TtbHF2gpPxsfBaH8/5pHVpzszBQ/K
	LOm235x6myJK0BSbkuZPU/pBNUbQo14WZSAoYc/A85nOmSobPRquDPHbx3PMD2nDIA4pujMfDeAha
	u5seetPReC0ei8Hh4barVoOmp27IT0c8Vv2bwUfjJqe8Bxip9IrpEYmJocj64SmdXHumJrX1rALhQ
	8f2MKwY8zODg2cV49lMUjSJFxSH9Ck9dlI3JFIYK6jVXZ140Rw007iLlk2P1yxyge6JdPqJQm+Tns
	OZ2OX9JLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwr2-00030x-GR; Thu, 03 Oct 2019 08:52:56 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwqy-00030E-Rm
 for kexec@lists.infradead.org; Thu, 03 Oct 2019 08:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570092759;
 bh=/IBfHsgIuNYB/nV+Cni+6WDQn1fljxH3xa/2LjW0BFA=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=f/qkUZDJQ54NvH1eRqYrxlwzVuId8oY3Eyu5dQKOLy6/pNtNAeVK9X0+6A10Y3dSj
 dXKxtsTAPJcbNCRRWfT4I2KD0fJ/pgYOe0US2ubTBtPm4HGzknsUqI4SkzIJeudVS6
 924uDCpi/dIx+3vhLBT0IiNwAZbdjWVsVYaQgG9o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.143.120]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M59GG-1iEqO32UZY-0017KZ; Thu, 03
 Oct 2019 10:52:39 +0200
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
To: Simon Horman <horms@verge.net.au>
References: <20191001151416.GA25667@ls3530.fritz.box>
 <20191003081406.5qmzlmlpwobydfok@verge.net.au>
From: Helge Deller <deller@gmx.de>
Message-ID: <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
Date: Thu, 3 Oct 2019 10:52:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191003081406.5qmzlmlpwobydfok@verge.net.au>
Content-Language: en-US
X-Provags-ID: V03:K1:vIJHJ8Y0oVorTGb++Wp6RK1MKtfmuP9pZ1Xm9/bDnUt5LYId7nG
 dngN7IlA8pAV8A407gC5hDiAjuTfviyW3yPjfXnhlrfD6NDRTaoRMDvcMVKTyk40PVJqZCN
 vnfhMdLEpChn2h+vuDZAzTe7vAdEvk+PEvDBhtmmOnGXeEcmiVnYhVakrznsysnKRCNti8x
 IyzS/qgJe5FGU6b0BWdJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:taBCNy36yO8=:LGvsNgk7j0Oxevo1qpe7LA
 91uR1C2yaVe5BfiOsaFegi0xhGbo1+sAZytbNf564PTWPwpyHQLoMh3aBu+1lU/9vWfBKZ4PK
 3oFOvEUsJ1HSxLZAAWct6MUfygsT/AixA7JJ5dcB9NXAC7sbe1lp+F+MdH418bCOBUSysqt9A
 Xx7E85C18je9VX2LCSFFBK1GQYeL+Hkwo/UEyXSBysP20io7cLbGtQuVn1rJwonHPV+U2/ZSw
 iRh0AWvV4L0gyhq14pfuYQkO82tWN5B0xCAhHB299fnuA3a8e6kyzr2WQJiJNm23RcuoDV+3C
 OBj594eGvaNga583gnCT7Q8khH8YSKk+Hr5dyO24z2OEpci+UVzpFnBYAOEOD0/FcLK6lib4V
 yRVjvZVtQr1sVeDY7RzDAJDEF7ZCQA/E70rdOQ7JNKgtxcOU8sW8j9WTidJ1UHfeyWaq4sz9T
 QYFmWYZaxra40/vbXGMhGA6/z8f2SB519ac+hhsvE+j+zkLPPMHXriybTt9XM6k2makrdFW/a
 mlqMk4KM/keYA12CA6VQqyhG+HkHS1ARLdqwBtq2UgmoYkhcRmclIdEUQqQsulLWKAPjKZJWM
 ZLtvxmkdqNTSavgOMqRYjhcfJLdG1lz8jiugzi0rOJ+lGtK17FwcyJ7jCjll3LsMu9atyLmrK
 /0mRn2epYNY5ZoRJtzSnKxHYG1h3ilOHua3YYX2L0uy8eX+2uq9audx6qlruiBXYCuBFLDBPc
 qC6VrsuAfnpMQLwjsZwPSJInKdNlALENTZfhi+YOxSyYQnaQbLWv6yd/WLgbeChCZ++5/adfT
 qCU28Zk/DLBE6A7L7MUu4Dzv4s2QjIIvquwejnhEGmkh1X2uIDoYqMPD5HqrfwS+Wqw4+ryR4
 vZcP1/O+UNctVyTpLM74R+84TOtw7AZ4SlPQw3kxDlbFd47ba9bhLdrjWziRk6hHak7d83yD2
 Fv/7LiEGvlOilgtCTBJj6ZPg6iBhDPf8MQDZ4hetEhMbiCjQ/H5pAL4Nc9J1hG9cbaOvDFLJB
 6qtV59QLf0vpiY/eW2rXfGv0Kr19ZrZ/1twtcEvwtvDZXRQ4YbFPRWQaNsJWiX0gHE8VEHIKA
 vfdUSdLnnuoJM40l6DV9Fq5DNEcNAN/BLZ88BR+FiB0FR8HdnkoSwgeF7AFMZMutbdx1YKIkU
 et6LwCnQZ+HRbIsvrdYz9ThR/T/OwvytxodCShfnLI6sLi0NcVyde2X35CRkAa0lVNEeQRP8+
 MpeaJbysvt3MlspvOe1AKrdEiPMa9ou3vxex6dg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_015253_233699_F309761C 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
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

On 03.10.19 10:14, Simon Horman wrote:
> On Tue, Oct 01, 2019 at 05:14:16PM +0200, Helge Deller wrote:
>> When compiling kexec-tools on a 32-bit platform, assigning an
>> (unsigned long long) value to an (unsigned long) variable creates
>> this warning:
>>
>> elf_info.c: In function 'read_phys_offset_elf_kcore':
>> elf_info.c:805:14: warning: conversion from 'long long unsigned int' to 'long unsigned int' changes value from '18446744073709551615' to '4294967295'
>>    805 |  *phys_off = UINT64_MAX;
>>        |              ^~~~~~~~~~
>>
>> Fix it by casting UINT64_MAX to (unsigned long) before storing it to *phys_off.
>>
>> Signed-off-by: Helge Deller <deller@gmx.de>
>>
>> diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
>> index 2bce5cb..4d16983 100644
>> --- a/util_lib/elf_info.c
>> +++ b/util_lib/elf_info.c
>> @@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
>>   {
>>   	int ret;
>>
>> -	*phys_off = UINT64_MAX;
>> +	*phys_off = (unsigned long) UINT64_MAX;
>
> This seems to mask the problem that UINT64_MAX is not the right
> initialiser for unsigned long values on 32-bit platforms.
> Could we consider using UINT64_MAX from limits.h instead?

UINT64 means it is a 64bit value, while "unsigned long" is either 32-bit,
64bit (or maybe in the future even 128bit?).
Even assigning UINT32_MAX on a 32bit platform might be wrong.
So I think the cast above is probably the best solution.

Helge

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B1A1562B9
	for <lists+kexec@lfdr.de>; Sat,  8 Feb 2020 03:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RNsoNtRQE/JCjLm4uF/5Muz3UT68Ar6N18IgfoAzlyY=; b=BammvLhDIcF4Yp6DgsqpWhR5K
	vqKoTmHS5EuCSPYkVIyhLn2wpWsS5e/M+TCuq9eXgPAPbrirKAP0jyMrKBhB/PU8m+7Jg5w499kk0
	e80jegL3w6kdORex/bs5qKO/x+YefuclfiUntoKlTaQmBrq6Vfa+p1CBZ7lFKf628QNAhpHmWsYsF
	XNkZpOB6Kz1QYokKaThZn8oPse/9Xy4gzOG2B54LqPMO4m3NV+EI5UqCvkYEVXJf8Zd7AASFy0gML
	vfHdlb832CTeG3PKGg6LuI+NXNoj7mQrMmF2dV3vvwcGmQj1lOcBy29+Hem1dqE+7BigO5PjBitpq
	UqXoYqkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Fpw-0001ta-L1; Sat, 08 Feb 2020 02:27:12 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Fpt-0001tA-ND
 for kexec@lists.infradead.org; Sat, 08 Feb 2020 02:27:11 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0182OLo8028267;
 Sat, 8 Feb 2020 02:26:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=tTsmCC3Sy/1XTk8vsxCtITWl6QXlDpy14VxhQ0DcRZA=;
 b=hC2dtcZzTHUH18LOdQw8g+oUT0Z3ErTYOfA/BNo/qReNCVhiyMOrcUhGzUagYo+Gd92a
 Idv4ajIcZAYxTbgl1qiGTh/zYeoVm+s53xS0RlfmzkrJ2lKZLbKOd44kdL3XjdGVGMHU
 SwgU1oM/4gkMKuyqdmwmmLF29n8uTpFbG/ytGvpWVk2ZeysP324NvKks5pqTRolQPQlE
 egxhjXXc5Ocwcb6pK731sRpclfnsyrccKLpfR10a3yIqZ16zcUqas4iuMjuooQy9GIbw
 AbscCLkeh4qMlBfe+shkPi/fb/N5BNvhUnFzT6+8YCwC1D+W/CQUXdpf7/xg1YMbyy9l gg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xykbpk6ys-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 08 Feb 2020 02:26:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0182Nq8K100024;
 Sat, 8 Feb 2020 02:24:57 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2y1j4nfm9d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 08 Feb 2020 02:24:57 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0182Ougx004404;
 Sat, 8 Feb 2020 02:24:56 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Feb 2020 18:24:56 -0800
Subject: Re: [PATCH v7 1/4] x86: kdump: move reserve_crashkernel_low() into
 crash_core.c
To: kexec@lists.infradead.org
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-2-chenzhou10@huawei.com>
 <20191227055458.GA14893@dhcp-128-65.nay.redhat.com>
 <09d42854-461b-e85c-ba3f-0e1173dc95b5@huawei.com>
 <20191228093227.GA19720@dhcp-128-65.nay.redhat.com>
 <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <b14e1e07-e10f-42c0-b4f7-07090be3741c@Oracle.com>
Date: Fri, 7 Feb 2020 20:24:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <77c971a4-608f-ee35-40cb-77186a2ddbd1@arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9524
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002080018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9524
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002080018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_182709_843781_C5077D75 
X-CRM114-Status: GOOD (  28.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 1/16/20 9:17 AM, James Morse wrote:
> Hi guys,
> 
> On 28/12/2019 09:32, Dave Young wrote:
>> On 12/27/19 at 07:04pm, Chen Zhou wrote:
>>> On 2019/12/27 13:54, Dave Young wrote:
>>>> On 12/23/19 at 11:23pm, Chen Zhou wrote:
>>>>> In preparation for supporting reserve_crashkernel_low in arm64 as
>>>>> x86_64 does, move reserve_crashkernel_low() into kernel/crash_core.c.
>>>>>
>>>>> Note, in arm64, we reserve low memory if and only if crashkernel=X,low
>>>>> is specified. Different with x86_64, don't set low memory automatically.
>>>>
>>>> Do you have any reason for the difference?  I'd expect we have same
>>>> logic if possible and remove some of the ifdefs.
>>>
>>> In x86_64, if we reserve crashkernel above 4G, then we call reserve_crashkernel_low()
>>> to reserve low memory.
>>>
>>> In arm64, to simplify, we call reserve_crashkernel_low() at the beginning of reserve_crashkernel()
>>> and then relax the arm64_dma32_phys_limit if reserve_crashkernel_low() allocated something.
>>> In this case, if reserve crashkernel below 4G there will be 256M low memory set automatically
>>> and this needs extra considerations.
> 
>> Sorry that I did not read the old thread details and thought that is
>> arch dependent.  But rethink about that, it would be better that we can
>> have same semantic about crashkernel parameters across arches.  If we
>> make them different then it causes confusion, especially for
>> distributions.
> 
> Surely distros also want one crashkernel* string they can use on all platforms without
> having to detect the kernel version, platform or changeable memory layout...
> 
> 
>> OTOH, I thought if we reserve high memory then the low memory should be
>> needed.  There might be some exceptions, but I do not know the exact
>> one,
> 
>> can we make the behavior same, and special case those systems which
>> do not need low memory reservation.
> 
> Its tricky to work out which systems are the 'normal' ones.
> 
> We don't have a fixed memory layout for arm64. Some systems have no memory below 4G.
> Others have no memory above 4G.
> 
> Chen Zhou's machine has some memory below 4G, but its too precious to reserve a large
> chunk for kdump. Without any memory below 4G some of the drivers won't work.
> 
> I don't see what distros can set as their default for all platforms if high/low are
> mutually exclusive with the 'crashkernel=' in use today. How did x86 navigate this, ... or
> was it so long ago?
> 
> No one else has reported a problem with the existing placement logic, hence treating this
> 'low' thing as the 'in addition' special case.
> 


Hello,


I would be interesting in participating in testing these changes , and 
refining them if needed.

Please contact me if you need help.

JD


> 
>>> previous discusses:
>>> 	https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.org_lkml_2019_6_5_670&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=jOAu1DTDpohsWszalfTCYx46eGF19TSWVLchN5yBPgk&s=gS9BLOkmj78lP5L7SP6_VLHwvP249uWKaE2R7N7sxgM&e=
>>> 	https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.org_lkml_2019_6_13_229&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=jOAu1DTDpohsWszalfTCYx46eGF19TSWVLchN5yBPgk&s=U1Nis29n3A7XSBzED53fiE4MDAv5NlxYp1UorvvBOOw&e=
>>
>> Another concern from James:
>> "
>> With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
>> "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
>> find "Crash kernel", you are always going to get the kernel placed in the lower portion.
>> "
>>
>> The kexec-tools code is iterating all "Crash kernel" ranges and add them
>> in an array.  In X86 code, it uses the higher range to locate memory.
> 
> Then my hurried reading of what the user-space code does was wrong!
> 
> If kexec-tools places the kernel in the low region, there may not be enough memory left
> for whatever purpose it was reserved for. This was the motivation for giving it a
> different name.
> 
> 
> Thanks,
> 
> James
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=jOAu1DTDpohsWszalfTCYx46eGF19TSWVLchN5yBPgk&s=bqp02iQDP_Ez-XvLIvj-IPHqbbZwMPlDgmEcG8vhXFE&e=
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

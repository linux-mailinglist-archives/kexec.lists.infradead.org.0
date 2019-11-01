Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D238EC37F
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 14:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ExHRRC0AY9AhstlvhQAmxuGC8O0sd0dMO7umRwneAkw=; b=N/bxslIA5CW9z0Cz6WfM65QjI
	ShyXymbBgombfJJPsteBZHkHRBiH2mrf2204UeHuMvQ28OEzdjTxbtPMYbTuuENZlq6W4fs6UjU/x
	ZbHBEjOQTjvod+3HnROxmqt3dQUFCO/BhdO4MdzNrvq4CPDsEU+gOx3eFamh9bTlSC8oA0/l3iCTH
	XSwMAXBY2cvsSN+VW3o/a+dUCNYi2ge0pWVU7wHctEYj0Zhv3Q6dsJjOkrcF2nYlgJr6rcz1ziBLp
	bFQ98RYhb4M5cOfHP/VpB291JDlwPW+6dk2LIXFsMqsPa7VTxmpUDSr6U6r6bt5vDcHfhxbb+L6Vj
	vjhP77ymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWcL-00005M-Rh; Fri, 01 Nov 2019 13:05:29 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWcI-00004q-Eg
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 13:05:28 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA1D4tT4085342;
 Fri, 1 Nov 2019 13:05:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=OqabtaoRWL/D5AZSrLNKC8NXHsc7FrB4WaXV9uz05wU=;
 b=HaAoAWhDLjqJKOS/gIw6BzeOs50Rdy/h9pcG7gbpwlQaNHuz9itzFqGaSgi0vA7EQeIW
 2wqfQUWDQgR50pp3qmz+M6GthiLq51X+aAtBOFva/GnAjqlUXpgrzd9zZavnGCW0QGOa
 e7XXjlcAbVwWDSLyhL5gMs3rzIK4fCExgvuean//Q73SeUIzeuDFVVKoAvL+a5pGlGlI
 HiFDDMTFHvuwUX+8GyY2aG2VZE9uG+zhzWJ7fChMD8semVykOUZotr8zjqLsZ+p1rTk+
 LECQnEv1eiN5jluAUDlQbNqi4pjJ24xq2G15OaTnyZYGg6mamrQQ+KbHPwMcCr5PMCUd 9A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vxwhg1pvs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Nov 2019 13:05:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA1D3kmE122231;
 Fri, 1 Nov 2019 13:05:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vyqpg6rq5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 Nov 2019 13:05:21 +0000
Received: from abhmp0021.oracle.com (abhmp0021.oracle.com [141.146.116.27])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA1D5KNZ004164;
 Fri, 1 Nov 2019 13:05:20 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 01 Nov 2019 06:05:20 -0700
Subject: Re: [Crash-utility] crash and makedumpfile with 5.3 missing memory in
 dump
To: Dave Anderson <anderson@redhat.com>,
 "Discussion list for crash utility usage, maintenance and development"
 <crash-utility@redhat.com>
References: <20191101014837.lxmqee5jyic7lk4d@two.firstfloor.org>
 <1684529127.9771679.1572612525461.JavaMail.zimbra@redhat.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <1593ae18-e75d-0023-5895-04e3bcdb1950@Oracle.com>
Date: Fri, 1 Nov 2019 08:05:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1684529127.9771679.1572612525461.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9427
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911010131
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9427
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911010131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_060526_629819_960C2FBE 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 11/1/19 7:48 AM, Dave Anderson wrote:

SEE BELOW
> 
> 
> ----- Original Message -----
>> Hi,
>>
>> [I'm not sure if that is a crash or mkdumpfile problem]
>>
>> I'm trying to use crash to read a makedumpfile vmcore from 5.3, but I always
>> end up with an error when opening the dump.
>>
>> I'm using the latest github crash
>>
>> crash 7.2.7++
>> ...
>>   crash: page excluded: kernel virtual address: ffffffff82110370  type:
>>   "possible"
>>   WARNING: cannot read cpu_possible_map
>>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
>>   "present"
>>   WARNING: cannot read cpu_present_map
>>   crash: page excluded: kernel virtual address: ffffffff82110368  type:
>>   "online"
>>   WARNING: cannot read cpu_online_map
>>   crash: page excluded: kernel virtual address: ffffffff82110358  type:
>>   "active"
>>   WARNING: cannot read cpu_active_map
>>   crash: page excluded: kernel virtual address: ffffffff82011544  type:
>>   "init_uts_ns"
>>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
>>   "cpu_present_map"
>>   crash: page excluded: kernel virtual address: ffffffff82110360  type:
>>   "cpu_present_map"
>>   WARNING: ORC unwinder: cannot read lookup_num_blocks
>>   crash: seek error: kernel virtual address: ffff88822dffb000  type:
>>   "memory section root table"
>>
>> The dump is created with the latest makedumpfile release
>>
>> makedumpfile: version 1.6.6 (released on 27 Jun 2019)
>>
>> It complains that it doesn't support the kernel
>>
>> Any ideas?
>>
>> -Andi
>>
> 
> Yeah, I'm not sure either.  I've tested the github crash on kernels up to 5.4-rc5,
> but only running on a live system.  Given that the errors indicate "page excluded",
> it looks like makedumpfile 1.6.6 may not cover 5.4 kernels.  The makedumpfile git
> log's master branch shows these as the last two commits:
> 
>    commit 0a8b504102dbdb952b2e2e3ce15ae706165eba4e
>    Author: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
>    Date:   Thu Jun 27 08:42:40 2019 -0400
> 
>      [v1.6.6] Update version
>      
>      Update makedumpfile to version 1.6.6.
>      
>      Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> 
>    commit 8c21fc7e7c52a2c3e0299e50a8b37becadfa77b4
>    Author: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
>    Date:   Thu Jun 13 15:32:55 2019 -0400
> 
>      [PATCH] Support newer kernels up to v5.1
>      
>      A new makedumpfile supports newer kernels:
>      
>        - 4.20, 5.0, 5.1  (x86 FLATMEM)
>        - 4.20, 5.0, 5.1  (x86 SPARSEMEM)
>        - 4.20, 5.0, 5.1  (x86_64 SPARSEMEM)
>      
>      Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> 
> Dave
> 
> 
> 
> 


Hello,


Kazuhito Hagio asked me to share my test results on this patch for 
makedumpfile :


https://urldefense.proofpoint.com/v2/url?u=https-3A__sourceforge.net_p_makedumpfile_code_ci_7bdb468c2c99dd780c9a5321f93c79cbfdce2527_&d=DwIGaQ&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=RRTWEGpecudcCrNL7TSmV5r2eIO7t_VrYruNXGGFhUE&s=BlcGeqwro6opkCKG9utpl8jfwoHMehRzt_V0nGz1fk4&e= 


And I was successfully able to get vmcore dumps on vmlinuz-5.3.6 and 
5.4.0-rc3 Intel ( x86-64) kernels.

Also I was able to use crash

   7.2.6-2.el8

to review the dump.  I didn't do a lot of crash comamnds but it did 
process the vmcore



> 
> 
> 
>> --
>> Crash-utility mailing list
>> Crash-utility@redhat.com
>> https://urldefense.proofpoint.com/v2/url?u=https-3A__www.redhat.com_mailman_listinfo_crash-2Dutility&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=9yL0dKr8YPcdyw8vhjxi5rc_RZGNuf0lc0WRWsTNSlo&s=pVuyiNdvWTttmzeUYAUiduUcsdeYChqP6s1XzM3OxX4&e=
>>
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=RoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=t2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=9yL0dKr8YPcdyw8vhjxi5rc_RZGNuf0lc0WRWsTNSlo&s=csTpNCSCrSAX9v0u0oSf00VFC7TzIABjI6cYaDBk6v0&e=
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

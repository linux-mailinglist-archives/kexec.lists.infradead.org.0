Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA1D19B5A3
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 20:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzsdqcgTbycjk2LlNwKAOJEvzDes2m7T1irz7vWnNVM=; b=OwYmj0FNfnsTYR
	OysDubTYf1rMINWtcoWLDrl8S2iWM8cdSIII003nhvb8LlP8sXcTr1tq6LEgZJ2nAoB5t+NfBkzrz
	oN8eWN9qKwhTGWj/gztz1CiSJAmbq4BKlENTut6GImSf+PsGMFeth7Bu9bbZtcCaA16f1UmkJPUzl
	D0uS+aHaneDseF9K41qcbVelTbJPIHQX730A9bFr3Si6XmBuZqCmtHXtWf0ujvuMRZAnIyS4t5UJn
	zNEbVDdpme90NEmxs4jMxWslZRZkW9PvPdiyxbAqrK9B2T7eM+zy55Vn/H/ODJt7kv11Fc7CRUd8k
	6sF9qmAUiVBnbFQBQSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiDo-0001Ps-1f; Wed, 01 Apr 2020 18:36:16 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiDk-0001PG-5r
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 18:36:13 +0000
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 031IYT62090968
 for <kexec@lists.infradead.org>; Wed, 1 Apr 2020 14:36:09 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 304mcbn78m-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Wed, 01 Apr 2020 14:36:09 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <hbathini@linux.ibm.com>;
 Wed, 1 Apr 2020 19:35:56 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 1 Apr 2020 19:35:53 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 031Ia3To24641798
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 1 Apr 2020 18:36:03 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D1A1FAE045;
 Wed,  1 Apr 2020 18:36:03 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B0747AE051;
 Wed,  1 Apr 2020 18:36:02 +0000 (GMT)
Received: from [9.102.0.220] (unknown [9.102.0.220])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  1 Apr 2020 18:36:02 +0000 (GMT)
Subject: Re: [PATCHv4] powerpc/crashkernel: take "mem=" option into account
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <48c1b852-28e0-9c46-cafa-7c5992f966a7@linux.ibm.com>
 <1585749644-4148-1-git-send-email-kernelfans@gmail.com>
From: Hari Bathini <hbathini@linux.ibm.com>
Date: Thu, 2 Apr 2020 00:06:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1585749644-4148-1-git-send-email-kernelfans@gmail.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20040118-0008-0000-0000-000003689FB9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040118-0009-0000-0000-00004A8A290F
Message-Id: <2bfddcda-1187-5718-ce13-0c30d25337a9@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-01_04:2020-03-31,
 2020-04-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2003020000 definitions=main-2004010150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_113612_337242_16F2DCD5 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 01/04/20 7:30 PM, Pingfan Liu wrote:
> 'mem=" option is an easy way to put high pressure on memory during some
> test. Hence after applying the memory limit, instead of total mem, the
> actual usable memory should be considered when reserving mem for
> crashkernel. Otherwise the boot up may experience OOM issue.
> 
> E.g. it would reserve 4G prior to the change and 512M afterward, if passing
> crashkernel="2G-4G:384M,4G-16G:512M,16G-64G:1G,64G-128G:2G,128G-:4G", and
> mem=5G on a 256G machine.
> 
> This issue is powerpc specific because it puts higher priority on fadump
> and kdump reservation than on "mem=". Referring the following code:
>     if (fadump_reserve_mem() == 0)
>             reserve_crashkernel();
>     ...
>     /* Ensure that total memory size is page-aligned. */
>     limit = ALIGN(memory_limit ?: memblock_phys_mem_size(), PAGE_SIZE);
>     memblock_enforce_memory_limit(limit);
> 
> While on other arches, the effect of "mem=" takes a higher priority and pass
> through memblock_phys_mem_size() before calling reserve_crashkernel().
>> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linuxppc-dev@lists.ozlabs.org
> Cc: Hari Bathini <hbathini@linux.ibm.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: kexec@lists.infradead.org
> ---
> v3 -> v4: fix total_mem_sz based on adjusted memory_limit


Thanks for the update.

Reviewed-by: Hari Bathini <hbathini@linux.ibm.com>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

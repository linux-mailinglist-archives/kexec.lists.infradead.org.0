Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9182175534
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 09:07:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejdwaE/KnvXvsUahHRX+P+hbyMIQFz4G2r0urUnJjXY=; b=GTlvwNeYDtR/ki
	8KdDEvnUywIQhTsqsdtuHtuhI5/i1PXN7ecczQMuQ8kjGqHbWjeuQk/tM0Hd3ZyQgznwIXihHR2c1
	UTUJ4k52gSJevb7TrizPxojW2wkQELIgAJ5cH1qk75SFERng4Og12Fd0I47s+yAaJEEphfu3Ra+cL
	ze+zx//UVctRV3p94eUtR3CNPDwKmV5rmW1h/J8nRi29jBxtoOdxg+M9kTj8DYRs+Ve81Ilh8kqrb
	eebwad0jILnEMzpNs6lDYhVVj+Q+7Ik67lL9ol7CC0kQtjbm8iYyXBWZulU4xVT5/fWkIbdMSndo2
	Dtw0TnY7D+NjZ+uzHwVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8g6l-000308-VK; Mon, 02 Mar 2020 08:07:23 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8g6i-0002x2-6l
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 08:07:22 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02284KmD066373
 for <kexec@lists.infradead.org>; Mon, 2 Mar 2020 03:07:17 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2yfmyqdk7e-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 02 Mar 2020 03:07:16 -0500
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <hbathini@linux.ibm.com>;
 Mon, 2 Mar 2020 08:07:15 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 2 Mar 2020 08:07:13 -0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 02287CQF58196036
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 2 Mar 2020 08:07:12 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 04B5B11C054;
 Mon,  2 Mar 2020 08:07:12 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D842211C050;
 Mon,  2 Mar 2020 08:07:09 +0000 (GMT)
Received: from [9.85.85.34] (unknown [9.85.85.34])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon,  2 Mar 2020 08:07:09 +0000 (GMT)
Subject: Re: [PATCH 2/2] powerpc/pseries: update device tree before ejecting
 hotplug uevents
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <1581389982-5701-1-git-send-email-kernelfans@gmail.com>
 <1581389982-5701-2-git-send-email-kernelfans@gmail.com>
From: Hari Bathini <hbathini@linux.ibm.com>
Date: Mon, 2 Mar 2020 13:37:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1581389982-5701-2-git-send-email-kernelfans@gmail.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20030208-0020-0000-0000-000003AF6A25
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20030208-0021-0000-0000-0000220793E5
Message-Id: <aaacb114-8155-6761-305a-db728640c125@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-02_02:2020-02-28,
 2020-03-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1011
 priorityscore=1501 mlxlogscore=999 malwarescore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003020062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_000720_379388_2CBCF225 
X-CRM114-Status: GOOD (  25.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Mackerras <paulus@samba.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 11/02/20 8:29 AM, Pingfan Liu wrote:
> A bug is observed on pseries by taking the following steps on rhel:
> -1. drmgr -c mem -r -q 5
> -2. echo c > /proc/sysrq-trigger
> 
> And then, the failure looks like:
> kdump: saving to /sysroot//var/crash/127.0.0.1-2020-01-16-02:06:14/
> kdump: saving vmcore-dmesg.txt
> kdump: saving vmcore-dmesg.txt complete
> kdump: saving vmcore
>  Checking for memory holes                         : [  0.0 %] /                   Checking for memory holes                         : [100.0 %] |                   Excluding unnecessary pages                       : [100.0 %] \                   Copying data                                      : [  0.3 %] -          eta: 38s[   44.337636] hash-mmu: mm: Hashing failure ! EA=0x7fffba400000 access=0x8000000000000004 current=makedumpfile
> [   44.337663] hash-mmu:     trap=0x300 vsid=0x13a109c ssize=1 base psize=2 psize 2 pte=0xc000000050000504
> [   44.337677] hash-mmu: mm: Hashing failure ! EA=0x7fffba400000 access=0x8000000000000004 current=makedumpfile
> [   44.337692] hash-mmu:     trap=0x300 vsid=0x13a109c ssize=1 base psize=2 psize 2 pte=0xc000000050000504
> [   44.337708] makedumpfile[469]: unhandled signal 7 at 00007fffba400000 nip 00007fffbbc4d7fc lr 000000011356ca3c code 2
> [   44.338548] Core dump to |/bin/false pipe failed
> /lib/kdump-lib-initramfs.sh: line 98:   469 Bus error               $CORE_COLLECTOR /proc/vmcore $_mp/$KDUMP_PATH/$HOST_IP-$DATEDIR/vmcore-incomplete
> kdump: saving vmcore failed
> 
> * Root cause *
>   After analyzing, it turns out that in the current implementation,
> when hot-removing lmb, the KOBJ_REMOVE event ejects before the dt updating as
> the code __remove_memory() comes before drmem_update_dt().
> 
> From a viewpoint of listener and publisher, the publisher notifies the
> listener before data is ready.  This introduces a problem where udev
> launches kexec-tools (due to KOBJ_REMOVE) and loads a stale dt before
> updating. And in capture kernel, makedumpfile will access the memory based
> on the stale dt info, and hit a SIGBUS error due to an un-existed lmb.
> 
> * Fix *
>   In order to fix this issue, update dt before __remove_memory(), and
> accordingly the same rule in hot-add path.
> 
> This will introduce extra dt updating payload for each involved lmb when hotplug.
> But it should be fine since drmem_update_dt() is memory based operation and
> hotplug is not a hot path.
> 
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Hari Bathini <hbathini@linux.ibm.com>
> To: linuxppc-dev@lists.ozlabs.org
> Cc: kexec@lists.infradead.org

KDump fails to capture vmcore as we end up looking at a stale elfcore hdr
with udev event happening before DT update. Resolved with these patches.
For the series:

Tested-by: Hari Bathini <hbathini@linux.ibm.com>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

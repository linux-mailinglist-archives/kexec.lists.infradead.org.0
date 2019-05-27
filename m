Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0742BB33
	for <lists+kexec@lfdr.de>; Mon, 27 May 2019 22:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JbKN4muXaksnrdm17Jy+sXfU6LCSgRSVPlrpNvuIAI0=; b=i2yfdO4lkahFQqPXN97J3ms/DP
	Bxh7NSYdBHMTGS44l28T3znYFBZoQhbJCnw5vURj9FhMNKxQwtOn5h24JOddE2dYdlOsLmjMVifhU
	+1VyuOqwM//bsDGXaGqD7cURS0ekETc/YY0+6m59Qkxhez2IJZrRe7wal438SOHMuYd3rRNlch80X
	h3RoJkSvfaMao0hJoFbY+aQVCtvXRblViB+aOokH01VnhCzB1KRocxNoWQE8UGg454I4Cy+vGhnbf
	/fAhpFpHs+4qTGHC3Me3OQ5pizBcMCxLD6sQW5gWAYwFr5idycmPBeTMCjy/8FhTzMWKEHGuMeGuM
	N6+oZmHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVM1M-00057F-90; Mon, 27 May 2019 20:15:00 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM1E-00056o-4M
 for kexec@lists.infradead.org; Mon, 27 May 2019 20:14:54 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RKBsn3036912
 for <kexec@lists.infradead.org>; Mon, 27 May 2019 16:14:49 -0400
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2srkvx64u9-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 27 May 2019 16:14:49 -0400
Received: from localhost
 by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <bauerman@linux.ibm.com>;
 Mon, 27 May 2019 21:14:48 +0100
Received: from b03cxnp08026.gho.boulder.ibm.com (9.17.130.18)
 by e33.co.us.ibm.com (192.168.1.133) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 27 May 2019 21:14:46 +0100
Received: from b03ledav004.gho.boulder.ibm.com
 (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4RKEj7P22806886
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 May 2019 20:14:45 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8620F78067;
 Mon, 27 May 2019 20:14:45 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 16EE87805E;
 Mon, 27 May 2019 20:14:33 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.80.238.201])
 by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Mon, 27 May 2019 20:14:28 +0000 (GMT)
References: <20190522220158.18479-1-bauerman@linux.ibm.com>
 <459lBd53mCz9sBr@ozlabs.org>
User-agent: mu4e 1.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Michael Ellerman <patch-notifications@ellerman.id.au>
Subject: Re: [PATCH] powerpc: Fix loading of kernel + initramfs with
 kexec_file_load()
In-reply-to: <459lBd53mCz9sBr@ozlabs.org>
Date: Mon, 27 May 2019 17:14:17 -0300
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19052720-0036-0000-0000-00000AC37FD2
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011173; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01209460; UDB=6.00635357; IPR=6.00990487; 
 MB=3.00027077; MTD=3.00000008; XFM=3.00000015; UTC=2019-05-27 20:14:48
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052720-0037-0000-0000-00004BF7F30A
Message-Id: <87pno3psdi.fsf@morokweng.localdomain>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905270142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131452_523489_18293E1E 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: kexec@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Mimi Zohar <zohar@linux.ibm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Michael Ellerman <patch-notifications@ellerman.id.au> writes:

> On Wed, 2019-05-22 at 22:01:58 UTC, Thiago Jung Bauermann wrote:
>> Commit b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
>> changed kexec_add_buffer() to skip searching for a memory location if
>> kexec_buf.mem is already set, and use the address that is there.
>> 
>> In powerpc code we reuse a kexec_buf variable for loading both the kernel
>> and the initramfs by resetting some of the fields between those uses, but
>> not mem. This causes kexec_add_buffer() to try to load the kernel at the
>> same address where initramfs will be loaded, which is naturally rejected:
>> 
>>   # kexec -s -l --initrd initramfs vmlinuz
>>   kexec_file_load failed: Invalid argument
>> 
>> Setting the mem field before every call to kexec_add_buffer() fixes this
>> regression.
>> 
>> Fixes: b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
>> Signed-off-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
>> Reviewed-by: Dave Young <dyoung@redhat.com>
>
> Applied to powerpc fixes, thanks.
>
> https://git.kernel.org/powerpc/c/8b909e3548706cbebc0a676067b81aad

Thanks!!

-- 
Thiago Jung Bauermann
IBM Linux Technology Center


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

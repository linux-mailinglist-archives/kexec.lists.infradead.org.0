Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38DD2753F
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 06:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qVWjXSqJ8h9YurWVnbdvglrN3Ait8cl9w0En6gpYJZI=; b=e7Tgk5DXvrXrq5xpb8+9CGhNZ/
	ypPIGV6uLP3TpmYzGQ2uY1dgLHHBMLHdKx3x4+2H1Sw4bNUcP5c7Z+wY70ilGZVy+pjdvcRG9nq7u
	+73xr2NU+XOHP9y0qrBA17easUyq7pxMHWgCBDhRRUs/CNDec52G1kaOyMZRKxnOKGUf51fJQCnTk
	ZYp5T8nsr1pWkEUljZF7qZpO0APzy0f2H1pJA9oNl2a0QBgbn7NnRA2Irk2fNa4Fv0Pg/zVC3iEzY
	nE/6EuLULp4FJKAbGvo6PCE8HxC//Qf4k1IXLY3SVm/iG3Ii3/8HgFHquRa5zsSdupvuE3eL/9md3
	ScQCqf5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfZx-0002I2-L1; Thu, 23 May 2019 04:43:45 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfZu-0002Hg-Kv
 for kexec@lists.infradead.org; Thu, 23 May 2019 04:43:44 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4N4bQ2s024753
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 00:43:41 -0400
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2snkcqtp0c-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 00:43:41 -0400
Received: from localhost
 by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <bauerman@linux.ibm.com>;
 Thu, 23 May 2019 05:43:40 +0100
Received: from b03cxnp07029.gho.boulder.ibm.com (9.17.130.16)
 by e34.co.us.ibm.com (192.168.1.134) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 23 May 2019 05:43:38 +0100
Received: from b03ledav006.gho.boulder.ibm.com
 (b03ledav006.gho.boulder.ibm.com [9.17.130.237])
 by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4N4hbPk3473914
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 04:43:37 GMT
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E7414C605F;
 Thu, 23 May 2019 04:43:36 +0000 (GMT)
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DA869C6055;
 Thu, 23 May 2019 04:43:34 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.80.216.227])
 by b03ledav006.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Thu, 23 May 2019 04:43:34 +0000 (GMT)
References: <20190522220158.18479-1-bauerman@linux.ibm.com>
 <20190523032302.GD8174@dhcp-128-65.nay.redhat.com>
User-agent: mu4e 1.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH] powerpc: Fix loading of kernel + initramfs with
 kexec_file_load()
In-reply-to: <20190523032302.GD8174@dhcp-128-65.nay.redhat.com>
Date: Thu, 23 May 2019 01:43:29 -0300
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19052304-0016-0000-0000-000009B8A5A7
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011146; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01207281; UDB=6.00634023; IPR=6.00988261; 
 MB=3.00027013; MTD=3.00000008; XFM=3.00000015; UTC=2019-05-23 04:43:39
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052304-0017-0000-0000-000043546588
Message-Id: <87zhndzspa.fsf@morokweng.localdomain>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905230032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_214342_795769_E7913B20 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mimi Zohar <zohar@linux.ibm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Dave Young <dyoung@redhat.com> writes:

> On 05/22/19 at 07:01pm, Thiago Jung Bauermann wrote:
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
>> ---
>>  arch/powerpc/kernel/kexec_elf_64.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> Reviewed-by: Dave Young <dyoung@redhat.com>

Thanks!

-- 
Thiago Jung Bauermann
IBM Linux Technology Center


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

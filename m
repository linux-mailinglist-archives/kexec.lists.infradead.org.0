Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95144AC3EB
	for <lists+kexec@lfdr.de>; Sat,  7 Sep 2019 03:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QnVivlLZ9jCyyaTMr6xM6KMi/UX9dYgDTPOEhCsUd2M=; b=hRluFSEX7yRr3kJfhANCDA0388
	tYq4Tyf69U744c3y4LHxK7xvSrdvCJGtcf37pBEFS2Dq12KeQuvY6SPsQ1y/4dKDav9PJ5B74YpXp
	vKjjsSoViSka4OapPO/vURXmkKEk1nT4Nu+ggeGwBIOBMYQNRBj9yKhyofjF8vgRUnh+ny3/diYR2
	8c6HHxkknxn57pV2YBQaZbpXrGOFXiAYdc4RDp4VxJcW6LsrBdbssmTNQT265DHwJPg3FlCUdt+4p
	+VfdH+ziEt9VteduaHUa9PYgVCgd8WYFYwaqZUeFzi5ScL3c3U9lfC96KfXoG43fg5VI5WJ/Q+GjI
	haDRlv3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Pd9-0002ib-Kf; Sat, 07 Sep 2019 01:35:11 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Pd5-0002Hd-NH
 for kexec@lists.infradead.org; Sat, 07 Sep 2019 01:35:09 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x871VcxL039606; Fri, 6 Sep 2019 21:35:05 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uuwcns85u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Sep 2019 21:35:05 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x871WNcd041002;
 Fri, 6 Sep 2019 21:35:04 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uuwcns85h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Sep 2019 21:35:04 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x871YncW013303;
 Sat, 7 Sep 2019 01:35:03 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com
 [9.57.198.28]) by ppma01wdc.us.ibm.com with ESMTP id 2uqgh7faxb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 07 Sep 2019 01:35:03 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com
 [9.57.199.110])
 by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x871Z35r52560288
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 7 Sep 2019 01:35:03 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 281D9AE060;
 Sat,  7 Sep 2019 01:35:03 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EE52EAE05C;
 Sat,  7 Sep 2019 01:35:00 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.199.12])
 by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTPS;
 Sat,  7 Sep 2019 01:35:00 +0000 (GMT)
References: <20190823194919.30916-1-svens@stackframe.org>
 <22b40bb7-6f86-0a69-12b2-12d90124173d@gmx.de>
 <87blvxgkqw.fsf@morokweng.localdomain>
 <ac109a98-8a41-b3b2-9b2e-2bfe5bd3166a@gmx.de>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v5 0/7] kexec: add generic support for elf kernel images
In-reply-to: <ac109a98-8a41-b3b2-9b2e-2bfe5bd3166a@gmx.de>
Date: Fri, 06 Sep 2019 22:34:57 -0300
Message-ID: <87a7bghose.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-07_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909070015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_183507_772473_A0601147 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
Cc: kexec@lists.infradead.org, Sven Schnelle <svens@stackframe.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Helge Deller <deller@gmx.de> writes:

> On 06.09.19 23:47, Thiago Jung Bauermann wrote:
>> Helge Deller <deller@gmx.de> writes:
>>> This kexec patch series is the groundwork for kexec on the parisc architecture.
>>> Since we want kexec on parisc, I've applied it to my for-next-kexec tree [1],
>>> and can push it to Linus in the next merge window through the parisc tree [2].
>>
>> I just had a look at this version and it looks fine to me. Identical to
>> the version I reviewed before except for the changes I suggested.
>> Thanks, Sven!
>>
>>> If someone has any objections, or if you prefer to take it through
>>> a kexec or powerpc tree, please let me know.
>>>
>>> Helge
>>>
>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next-kexec
>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next
>>
>> I noticed that the first patch is the only one that doesn't have my
>> Reviewed-by. If you want, you can add it:
>>
>> Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
>
> Thanks for reviewing again!
> I added your Reviewed-by to the patches in the for-next tree.

Thanks!

-- 
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

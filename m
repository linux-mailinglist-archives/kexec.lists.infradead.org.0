Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F6A11C260
	for <lists+kexec@lfdr.de>; Thu, 12 Dec 2019 02:41:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ONnqfc1ER0J5KjybytoMOuCqxztD6qMcNcPMjPXSHE=; b=D6J8e2azdows0L26sX03dd3fLD
	C5ul5BgrwAX6KN2+MG9pM8mRa1NBUb0S0GRzlt0F3/BaeIctimVpy/ntX+XPHRJGyHmYrmhAfKXpY
	My1/HAFfRumlur3gd1c7xW6hMET84c4hg4/BQTJn+J4GSisxUcuhSdm+jORh6j8ZTFXOseTG7w+aP
	iJ/0rcodys/bykFOVz+SfYyhJ8VzHJQtrJUCAZ1q3pUkre5a23ejIhlk5UrYIE1AbU/hjmPkZi1Ze
	zqinxPc1dV5IF3cvUxasOHcjL1DIXdChT7/+l8rMSKR9OngLvlwKRUGYOYNyLlwQAzKWlP7z0bpQ0
	MX4PW8AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDTX-0002lD-Ec; Thu, 12 Dec 2019 01:41:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDTT-0002kQ-6Y
 for kexec@lists.infradead.org; Thu, 12 Dec 2019 01:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576114859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TK5fVZqwX06iKV61csWVYE0QS9VupOISgrdn8GWZ4iM=;
 b=LsN1AgHt6ZtRl1MBPqVClorfKAk7Zk3ts+ckJD8Blsa72Mau4qZWkJ1RC8NK4wEJy5Hsrg
 H5WvnumqXT1M5Gw3ue686Ynux6vUzDZLVxgCJeGa3TgsV8q9CUXLTrCax9fRQ+9uY81jfD
 pH7uU9aI1U2sVeit64B2qdbBxCVa55Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-ADDy_Sv6O8moorDn1QP8cA-1; Wed, 11 Dec 2019 20:40:55 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4852101F4F5;
 Thu, 12 Dec 2019 01:40:54 +0000 (UTC)
Received: from [10.72.8.18] (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ABBAF60E1C;
 Thu, 12 Dec 2019 01:40:53 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
To: kexec@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
 <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597A16@BPXM09GP.gisp.nec.co.jp>
 <22c89e8b-49ab-0cd2-2e63-9e380ad4ba8a@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597DC4@BPXM09GP.gisp.nec.co.jp>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <9d5b162e-8d7e-1f2f-92a9-676476398e91@redhat.com>
Date: Thu, 12 Dec 2019 09:40:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03597DC4@BPXM09GP.gisp.nec.co.jp>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: ADDy_Sv6O8moorDn1QP8cA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_174103_460214_CFAB9B3F 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 12/12/2019 01:44 AM, Kazuhito Hagio wrote:
> Hi Pingfan,
> 
>> -----Original Message-----
>>> Reading the code, I think
>>> - the issue might occur not only in refiltering, but also the first filtering
>>>   with --split and --work-dir option (forced non-cyclic mode).
>>> - pefer to gather things for --split option into writeout_multiple_dumpfiles()
>>>   if we can, for readability.
>> Yes, all of the cases suffer from sharing fd across processes
>>>
>>> So does the following patch work for you and your test?
>>> I could not have reproduced the issue yet.
>> I tried to fetch a machine to test. It pass 50 times test with your
>> patch. While if without this patch, it failed about 1 out of 4 times.
> 
> Good. Thank you for testing.
> 
>>> BTW, what do you see when the issue occurs? an error or broken dump?
>> The test case is refiltering, "makedumpfile --split  -d 31
>> /root/vmcore-p9b-21 dumpfile_{1,2,3} 2>&1"
>> And it can not complete the dump.
> 
> Ah, I got it. I probably could reproduce the issue:
> ---
> Excluding unnecessary pages                       : [100.0 %] \
> readpage_kdump_compressed: pfn(2fc1000) is excluded from vmcore.
> readmem: type_addr: 1, addr:2fc1000000, size:4096
> read_pfn: Can't get the page data.
> ...
> writeout_multiple_dumpfiles: Child process(30993) finished incompletely.(256)
> 
> makedumpfile Failed.
> ---
> 
> Refiltering was the factor that makedumpfile failed, but I think this bug
> also can break the dumpfile silently by excluding pages wrongly even in
> first filtering.
Yes, you are right.
> 
> I guess this bug was hard to debug. Thank you so much for working on this!
Yeah, it took me some time. I had thought it should be a kernel bug
about the file{}.
> Modified your patch and pushed.
> https://sourceforge.net/p/makedumpfile/code/ci/5519b3eba68544dc484d85e9540d440d93f8c924/
> 
Thanks,
Pingfan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

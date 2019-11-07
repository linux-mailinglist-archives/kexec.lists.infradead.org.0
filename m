Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C66F3A88
	for <lists+kexec@lfdr.de>; Thu,  7 Nov 2019 22:29:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK0n++YJrExJ0X9widkxnZ4yNO9IH//Hko248EeD/Ng=; b=XRV0B8bBVc0yUR
	k9z415vfDjRn1F1fZJGyTsqqUQZ4XgGhGRWu2IDVmGlfmo/Nqc+MkPXnDRiagvW3GEB+kmjoQZVwI
	LpVZf7Rai03WK6k8JT/BTGSSvc23dgeFJ+vLrvXSWcOjcApHtpiZBrQHyq0FwsLUJPqCSO/ypLK8R
	7TqQeLihmmYnFNR/aTzDbmdphPV1ybAtBZZbiK7zbk+cjEhRhmPY4diUOB9pWGdHkzVrF5dkX9kX4
	vh23kD6JuPhSqM1EXB5aAlyyxu3AT+bDvvuH1XmjuknlxZ3gkuRvsQ8p+DKNc34pDpu5KXMftPnOJ
	a71nvzZck/5Dt6mmrfsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpLB-00013V-NM; Thu, 07 Nov 2019 21:29:17 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpL8-00012r-9U
 for kexec@lists.infradead.org; Thu, 07 Nov 2019 21:29:16 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA7LTAF0031609
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 8 Nov 2019 06:29:10 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA7LT9GQ022508;
 Fri, 8 Nov 2019 06:29:09 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA7LSOj6027761; 
 Fri, 8 Nov 2019 06:29:09 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-562008;
 Fri, 8 Nov 2019 06:28:50 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Fri, 8
 Nov 2019 06:28:49 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Anderson <anderson@redhat.com>
Subject: RE: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report()) (Kazuhito Hagio)
Thread-Topic: makedumpfile: ELF format issues (RE: makedumpfile: Fix divide
 by zero in print_report()) (Kazuhito Hagio)
Thread-Index: AdWVsla8Nl72ejtMTWaQSPgEjDhXVA==
Date: Thu, 7 Nov 2019 21:28:48 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594A21@BPXM09GP.gisp.nec.co.jp>
References: <mailman.7.1573156802.22483.kexec@lists.infradead.org>
 <651227040.10956407.1573157891163.JavaMail.zimbra@redhat.com>
In-Reply-To: <651227040.10956407.1573157891163.JavaMail.zimbra@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.118]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_132914_560272_D6648595 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave,

> -----Original Message-----
> > > I think this will be the one of the causes, and had a look at how
> > > we can fix it.  If you get a vmcore where this pattern occurs,
> > > you can try this tree:
> > > https://github.com/k-hagio/makedumpfile/tree/support-extended-elf
> > >
> > > Then, the crash utility also needs a patch to support a dumpfile
> > > that has more than 64k program headers:
> > > https://github.com/k-hagio/crash/tree/support-extended-elf

> > It is possible that the issue occurs on general systems if they have
> > large memory, so I'm going to proceed with those patches.
> 
> Hi Kazu,
> 
> Do you want me to go ahead with the crash utility patch?  It looks
> safe enough to apply, and I did test it to make sure there were no
> ill-effects with sample ELF dumpfiles.

Oh, thank you for your attention and testing.

I'm dropping the ELF32 parts of them, because I think they will not be
used in the future.  (I estimate the theoretical minimum memory size
that makedumpfile could use the extended numbering is 64GB+256MB on
4k page system.)

I will let you know when it gets prepared.

Thanks!
Kazu
_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

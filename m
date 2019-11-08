Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFEAF50F6
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 17:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=20p8cszOLm2V/arNV8tTBvplk5ttOCrp7y/Q7IrC6i4=; b=kz7i/b5tWC3P/N
	5YNmcKR9+MSXtRXs+g/fInW/e//nsK/SYRnzqhCVcdiKIwvyez+ZzH9Li74w9n+99UuMn2OYPgrjO
	AKLns/wA0SJHYbZVD2ReE+8ncXKg09Ma3hIBQkY6glLybsmQVNVP+Dpn2+iaaOFAC2EikObVDDntu
	ftJ7Jh8GgNk72QXUrFaXz9wsi7N4IDMot2fkhdeRl+p7U3EStqvSYkv4G1KPB6L5uO4TuhDa/Co7B
	OkeK3Q41YvDpa6UGOM5+3djnYufJT47UJF9TRFmiwzPrFi+ztMo/PHqttGT1dsZOpAxH2eIY/1ENd
	ga4b7TedKkvlxSAMBO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT71S-0003gQ-N7; Fri, 08 Nov 2019 16:22:06 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT71M-0003fN-6D
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 16:22:01 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA8GLv0K003722
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 9 Nov 2019 01:21:57 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8GLvpH020282;
 Sat, 9 Nov 2019 01:21:57 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8GLvAI014280;
 Sat, 9 Nov 2019 01:21:57 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-597698;
 Sat, 9 Nov 2019 01:19:13 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Sat, 9
 Nov 2019 01:19:12 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Anderson <anderson@redhat.com>
Subject: RE: makedumpfile: ELF format issues
Thread-Topic: makedumpfile: ELF format issues
Thread-Index: AdWWR4uz1IJKJQzMRsGi+hVXKECmUw==
Date: Fri, 8 Nov 2019 16:19:11 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594B01@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.2]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082200_454445_E2FA102A 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
> > > It is possible that the issue occurs on general systems if they have
> > > large memory, so I'm going to proceed with those patches.
> >
> > Hi Kazu,
> >
> > Do you want me to go ahead with the crash utility patch?  It looks
> > safe enough to apply, and I did test it to make sure there were no
> > ill-effects with sample ELF dumpfiles.
> 
> Oh, thank you for your attention and testing.
> 
> I'm dropping the ELF32 parts of them, because I think they will not be
> used in the future.  (I estimate the theoretical minimum memory size
> that makedumpfile could use the extended numbering is 64GB+256MB on
> 4k page system.)

I dropped the ELF32 part from the crash patch, could you check this?
https://github.com/k-hagio/crash/tree/support-extended-elf.v2

This is for makedumpfile:
https://github.com/k-hagio/makedumpfile/tree/support-extended-elf.v2

I will post the updated makedumpfile patch later for public review,
and would like to apply it next week.

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

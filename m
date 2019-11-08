Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F66CF54AA
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 20:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3YgyhuiUmRvF3BbnW8QI5LrpWd2O/gw+sYyGdzP2Jk=; b=Wc3w9oZO/4+5gG
	ZrE7f5wJoh455uf5jaS0kuGD26jzBrzHT8Xs6K9AuFmha3j4RGcwdmFd1xZBKTDrAaKYbakq4BgxR
	BH9kpljZi1VJurNzQ8WHQTmCFsc5bSD9NLColfCq/UYl9ciP2sAC01pVlkzpRkJ4FIbV3CpHnJgO3
	tAvzK5jjE6H/cHiaIuCb+3eXFLrqKk0mDG1b8j/IAOcf52uXoAEX20PbaUpNOkoQhYsP236Jb/8C6
	8XYVEE82ILx1GTybGhMX+JGzTfwR6oHLtbX6jxjweeZi0U+wgrWwQXldw3T1Vc8DyDQyCuPHifegf
	73nwwuLjNWp5EmpV+QZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTAHU-0003Dg-AM; Fri, 08 Nov 2019 19:50:52 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTAHQ-0003Cp-MZ
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 19:50:50 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA8Johpj015129
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 9 Nov 2019 04:50:43 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8JohhI003978;
 Sat, 9 Nov 2019 04:50:43 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8JohD5020607; 
 Sat, 9 Nov 2019 04:50:43 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-10219329;
 Sat, 9 Nov 2019 04:48:08 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Sat, 9
 Nov 2019 04:48:07 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Anderson <anderson@redhat.com>
Subject: RE: makedumpfile: ELF format issues
Thread-Topic: makedumpfile: ELF format issues
Thread-Index: AdWWR4uz1IJKJQzMRsGi+hVXKECmU05sXOWnTmNNBWA=
Date: Fri, 8 Nov 2019 19:48:07 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594B6D@BPXM09GP.gisp.nec.co.jp>
References: <4AE2DC15AC0B8543882A74EA0D43DBEC03594B01@BPXM09GP.gisp.nec.co.jp>
 <2055125554.11167146.1573240335556.JavaMail.zimbra@redhat.com>
In-Reply-To: <2055125554.11167146.1573240335556.JavaMail.zimbra@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.53]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_115048_985173_5E6F568E 
X-CRM114-Status: GOOD (  10.23  )
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


> -----Original Message-----
> > I dropped the ELF32 part from the crash patch, could you check this?
> > https://github.com/k-hagio/crash/tree/support-extended-elf.v2
> 
> Thanks Kazu -- the patch is queued for crash-7.2.8:
> 
>   https://github.com/crash-utility/crash/commit/c0bbd8fae4271159aee9e643350781909484c92f
> 
> Dave
> 

Thank you!

As for makedumpfile, I will take some more time to support refiltering
but it will not affect crash side.

Kazu

> 
> > This is for makedumpfile:
> > https://github.com/k-hagio/makedumpfile/tree/support-extended-elf.v2
> >
> > I will post the updated makedumpfile patch later for public review,
> > and would like to apply it next week.
> >
> > Thanks,
> > Kazu
> >
> >
> >
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF8DC0CBF
	for <lists+kexec@lfdr.de>; Fri, 27 Sep 2019 22:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa1mSjwm2IhB4NFr/qa4jSf6SwyPV8xgN3Y2D3v63hU=; b=BnGo9o/jVRaf+U
	mdbs1HMHRS62ux5p2fWU4RrNoyWzmwRon5wgCFqTv4kV+txKuHSVM3Y39+gNwB72ZnV+FKoMAxcv+
	pmE03Q/sM3S7XaYt4feMZBCkFVo6G1LM0IKOGpfQ9Oug0yFMulEyxmmqriN17NkQyZX6S8Oh5Ku8U
	8lXKhVCFV7/PEQgqHqPLfJvvRTFudUr3mh7Vz8PU8T/idJu79KjYYLJN9hKzLH6eKWqxniuz28Rzj
	HX6kZkiXi28xlfX4ZZQNWgLEUA5QxQt3gLK9LI5EWOWU7gX1/XZlijv6ohbXfeGZn7N+zyEsOF56I
	5csxgcfnWRMhF/UFjn2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDx2W-0007nm-8s; Fri, 27 Sep 2019 20:40:32 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDx2P-0007lq-Ck
 for kexec@lists.infradead.org; Fri, 27 Sep 2019 20:40:26 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x8RKeFGK019648
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 28 Sep 2019 05:40:15 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x8RKeFh0031693;
 Sat, 28 Sep 2019 05:40:15 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x8RKeF2m032730; 
 Sat, 28 Sep 2019 05:40:15 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-8925746;
 Sat, 28 Sep 2019 05:39:05 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Sat,
 28 Sep 2019 05:39:05 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Dave Jones <davej@codemonkey.org.uk>
Subject: RE: makedumpfile: Fix divide by zero in print_report()
Thread-Topic: makedumpfile: Fix divide by zero in print_report()
Thread-Index: AQHVcw/g+V5I957X20SkpJOpVNgNBac8j8FggAE1oICAAiLZQA==
Date: Fri, 27 Sep 2019 20:39:04 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035909ED@BPXM09GP.gisp.nec.co.jp>
References: <20190924194005.GA7666@codemonkey.org.uk>
 <4AE2DC15AC0B8543882A74EA0D43DBEC0359079B@BPXM09GP.gisp.nec.co.jp>
 <20190926193253.GA10258@codemonkey.org.uk>
In-Reply-To: <20190926193253.GA10258@codemonkey.org.uk>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.142]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_134025_642925_583E42FB 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> On Thu, Sep 26, 2019 at 06:41:48PM +0000, Kazuhito Hagio wrote:
> 
>  > > -----Original Message-----
>  > > If info->max_mapnr and pfn_memhole are equal, we divide by zero when
>  > > trying determine the 'shrinking' value.
>  > >
>  > > On the system I saw this error, we arrived at this function with
>  > > info->max_mapnr:0x0000000001080000 pfn_memhole:0x0000000001080000
>  >
>  > Thank you for the patch.
>  > I suppose that you see the error with the -E option, right?
>  >
>  > It seems that the -E option has some problems with its statistics,
>  > so I'm checking whether there is a better way to fix this.
> 
> Yes, we use the -E option.
> We manage to get useful info from the generated dump after this fix, so
> it seems it only affects the statistics output.

OK, the statistics in cyclic mode with the -E option is completely wrong
but a possible fix is likely to affect the whole of cyclic processing, so
I just cover the hole with your patch and leave the statistics problem as
a known issue at this time.  I would revisit it when I have time.

The patch was applied to the devel branch.

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

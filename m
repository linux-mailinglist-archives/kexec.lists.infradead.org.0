Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E680A70282
	for <lists+kexec@lfdr.de>; Mon, 22 Jul 2019 16:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDPI94H5TBSZrG71bxV753oq/TDv2uaYIbaVBWTcI7s=; b=ScnVvZCfeiCeGW
	powa1JdfUZC5yqXGmo7qOGuCFdcEMtx1IoPNwcx5ww6Hwre1doG84T8crd/S0tIag9kPNdrbBMYh2
	zpLSQYyScWEowO9fvuzZUsu0udsBWvV6k/Z+JdW4TJ2MW83wbdWNNi+c7OMeO/Ybco1c+U4oRdNet
	M5yh5cOQHIvcSHU9Sa6pDufu1FSGDxX+xgYOpgbsU6WuzFlh4XPwqIm1JyY1TIOsMWVPQDdxDVeKZ
	ZcMgwx8t6W7tSA/Y+EhS3tnDr/aYTfHQOZAn7Z0+lrATUOgBI3bK0AaR1grCA+VQabq5l56haE0/0
	9dzGGf0Jw2cxMWhIoXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZUm-00059r-Lj; Mon, 22 Jul 2019 14:40:56 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZUf-00058p-4M
 for kexec@lists.infradead.org; Mon, 22 Jul 2019 14:40:51 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x6MEegXX022285
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 22 Jul 2019 23:40:42 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x6MEeft3000394;
 Mon, 22 Jul 2019 23:40:42 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x6MEeBvL006201;
 Mon, 22 Jul 2019 23:40:41 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-7007053;
 Mon, 22 Jul 2019 23:35:53 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Mon,
 22 Jul 2019 23:35:52 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Donald Brady <don.brady@delphix.com>
Subject: RE: [RFC] makedumpfile: exclude ZFS file cache pages
Thread-Topic: [RFC] makedumpfile: exclude ZFS file cache pages
Thread-Index: AQHVPmpaxu24ORf0JU++RF9nXhu2pKbWolxw
Date: Mon, 22 Jul 2019 14:35:53 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03581F01@BPXM09GP.gisp.nec.co.jp>
References: <CAPEr6wVVboDUxUrGE77NtS2WWrhR8vV0EEGPvPMJ+hfzkAb26g@mail.gmail.com>
In-Reply-To: <CAPEr6wVVboDUxUrGE77NtS2WWrhR8vV0EEGPvPMJ+hfzkAb26g@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.56]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_074049_387850_D1FE7DA4 
X-CRM114-Status: GOOD (  12.91  )
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
> From: kexec <kexec-bounces@lists.infradead.org> On Behalf Of Donald Brady
> Sent: Friday, July 19, 2019 3:44 PM
> To: kexec@lists.infradead.org
> Subject: [RFC] makedumpfile: exclude ZFS file cache pages
> 
> Hello,
> 
> I have for consideration a makedumpfile patch that can exclude the ZFS
> file data cache pages. This is similar in capability as the exclusion
> of the VFS page cache pages.
> 
> My question to this list is how to proceed?  Should I post a patch or
> should I first explain how the ZFS pages are being marked and see if
> others here can recommend a better approach?

Hi Don,

Either is OK, but I don't have any knowledge about ZFS implementation
so the explanation of that and what your patch is going to do will be
helpful at least for me to review/discuss it. And as you say, someone
here may be able to help.

Thanks,
Kazu

> 
> Long term, ZFS should participate in the VFS page cache. However, that
> is a significant change and won't be available in the foreseeable
> future. There is an immediate benefit from excluding ZFS file cache
> pages that will benefit crash dump users that use ZFS.
> 
> Thanks in advance for your help!
> -Don
> 
> --
> DON BRADY
> Staff Engineer
> Delphix.com
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

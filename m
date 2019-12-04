Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1751137AE
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 23:37:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pHFEoa3/grsEG3zclxEdhEavB7SseuB33FAKP2Oc44=; b=WBH+Y4PuEyKKKF
	/gY3VwB8PWoHMPglQANLCYePRx0vywu9teYoFUx837Z4i7iESb5tO+WwlEZlmXezRa5mSWHtrxRPr
	a01OJmO+2JSxCt85W00GMpLgFeHxPZLgK1Rvm46JYfyW4AOmAhHE9sZ/BchF3rOONOcBg2q+p4UYC
	Q+I7+e5XlDer3Rl6nZelPjAeYwJ/uk33BYuvXoAkAMxtniXXkJMJfNZ5gn42ksrpfQWrMvJId5l4u
	UEJ17nLvKOChHGvZZaI1rs3coV59MFNB03L60hYKCbp41xlftg1qe2ZBtazDRwz+tBcSKEEr05D8n
	7FlsHxwLPJgdUCTWip0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdHH-0007cb-S1; Wed, 04 Dec 2019 22:37:47 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdHE-0007c9-Mo
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 22:37:46 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB4MbgKC010935
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Dec 2019 07:37:42 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB4Mbgf0004576;
 Thu, 5 Dec 2019 07:37:42 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB4Mbgdd013165;
 Thu, 5 Dec 2019 07:37:42 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-10973445;
 Thu, 5 Dec 2019 07:36:55 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Thu, 5
 Dec 2019 07:36:54 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Pingfan Liu <piliu@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
Thread-Topic: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
Thread-Index: AQHVplGex8H3A8Zhe0yuBEZorexlb6eqjtuA
Date: Wed, 4 Dec 2019 22:36:54 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC0359725A@BPXM09GP.gisp.nec.co.jp>
References: <1574989745-5262-1-git-send-email-piliu@redhat.com>
In-Reply-To: <1574989745-5262-1-git-send-email-piliu@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.153]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_143744_992194_25B15DCC 
X-CRM114-Status: GOOD (  10.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pingfan,

Thank you for the patch.

> -----Original Message-----
> since the following commit, -lebl has been removed from elfutils.
> commit b833c731359af12af9f16bcb621b3cdc170eafbc
> Author: Mark Wielaard <mark@klomp.org>
> Date:   Thu Aug 29 23:34:11 2019 +0200
> 
>     libebl: Don't install libebl.a, libebl.h and remove backends from spec.
> 
>     All archive members from libebl.a are now in libdw.a. We don't generate
>     separate backend shared libraries anymore. So remove them from the
>     elfutils.spec file.
> 
>     Signed-off-by: Mark Wielaard <mark@klomp.org>
> 
> So remove it from LIBS for makedumpfile

It seems that this is ok with the latest elfutils, but with older ones?
Is it possible to remove -lebl when elfutils does not have libebl.a?

Thanks,
Kazu

> 
> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 1fdb628..df21b93 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
>  SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c
> arch/ppc.c arch/sparc64.c
>  OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
> 
> -LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
> +LIBS = -ldw -lbz2 -ldl -lelf -lz
>  ifneq ($(LINKTYPE), dynamic)
>  LIBS := -static $(LIBS)
>  endif
> --
> 2.7.5
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

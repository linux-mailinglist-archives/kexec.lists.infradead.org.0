Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8786985B14
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 08:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNE+5DOcZSSSV3q+UIpEzWcFt3uNuLY7pJFzxDZ28g8=; b=Xi2x4SOComcyA6
	T+LRWUvdJQDJ9EzppA8lwFL8IYZ1Em++219mEhmYyiDxcQVu3yRtpamJN6G9MbVw5EQaV222Asyqv
	6sbdU223kInk5jYrveXcW/2AL6Ms6nu9MZixfFZ+Pixw+ybExJu8jdVPN9WumlviEt/aiOotxO956
	BWGwICv8QMkE8TZWRBQrx21BxjANwW6pTvYufVHCbIodYnHK8nbfHUNmgIfWPnls4DHGH1sphA5tE
	mty3G/O8DI8ZyMibZj92H7ZavwJOiVE09y0bsknOZVzXanIqeZqPCgs6fNeDCOy6IxwokFxONNDfE
	O3PApDCENA4Y2kekTVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcHO-0003Vw-D1; Thu, 08 Aug 2019 06:52:06 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcHK-0003VX-Lp
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 06:52:04 +0000
Received: from p200300ddd71876597e7a91fffec98e25.dip0.t-ipconnect.de
 ([2003:dd:d718:7659:7e7a:91ff:fec9:8e25])
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hvcGa-0001UH-CB; Thu, 08 Aug 2019 08:51:16 +0200
Date: Thu, 8 Aug 2019 08:51:04 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast
 mce
In-Reply-To: <CAFgQCTs7XN3xBPt64jPNb4wCGAZRmYSjhPM=tgcLriVCEx+uDA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1908080850220.2882@nanos.tec.linutronix.de>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
 <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
 <20190807075226.GA10392@mypc>
 <alpine.DEB.2.21.1908071504310.24014@nanos.tec.linutronix.de>
 <CAFgQCTs7XN3xBPt64jPNb4wCGAZRmYSjhPM=tgcLriVCEx+uDA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_235202_859486_44DB485D 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 Tony Luck <tony.luck@intel.com>, Peter Zijlstra <peterz@infradead.org>,
 kexec@lists.infradead.org, Jacob Pan <jacob.jun.pan@linux.intel.com>,
 x86@kernel.org, Michal Hocko <mhocko@suse.com>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Drake <drake@endlessm.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Masami Hiramatsu <mhiramat@kernel.org>, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Qian Cai <cai@lca.pw>,
 Dave Young <dyoung@redhat.com>, Xunlei Pang <xlpang@linux.alibaba.com>,
 Vlastimil Babka <vbabka@suse.cz>, Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019, Pingfan Liu wrote:
> On Wed, Aug 7, 2019 at 9:07 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> [...]
> > > > >
> > > > > *** Back ground ***
> > > > >
> > > > > On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> > > > > broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
> >
> > Pingfan, please trim your replies and remove the useless gunk after your answer.
> OK. I will.
> 
> Thanks,
>     Pingfan
> >
> > Thanks,
> >
> >         tglx
> 

First attempt to do so failed :)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

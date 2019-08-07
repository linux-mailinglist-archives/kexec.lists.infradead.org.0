Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2648E84C73
	for <lists+kexec@lfdr.de>; Wed,  7 Aug 2019 15:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cD239F9CskoQz1IcLctqgpylxZd5m024zVbJJojS21Y=; b=NHdLrtal2FyOsx
	O4kg52CsR/08y5kO87Mb/aH9lAIPf6NItPtpAPevl1m9yWrKgsKvUqyGyk/KP05IWeUhzjo5eAI+N
	wZxYmUvK0s8rciArnorJOHUd+n5fCK2F1Vg6IeMP3sTE2M2rEyXr9XNC6lBRjFGNatgww+AH/zTFp
	v66PZtroWqS7ahgdarZMh7y6bdwHn8Rhev+Qw2sNEiqf553IXborhPJTcFjplxf8JbCEw5yD8ac47
	aEpASTyX+d/m0WgyZS5e0f561z2TXbhQaGg4C8GwhnUtzQT707+khEa6sHfrK3s92oYgd0YIYpmOo
	6RGVniTyXU7cvOTGTwPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLgT-0006rK-6G; Wed, 07 Aug 2019 13:08:53 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLg6-0006Xu-39
 for kexec@lists.infradead.org; Wed, 07 Aug 2019 13:08:32 +0000
Received: from p200300ddd742df588d2c07822b9f4274.dip0.t-ipconnect.de
 ([2003:dd:d742:df58:8d2c:782:2b9f:4274])
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hvLfH-0000vJ-Ia; Wed, 07 Aug 2019 15:07:39 +0200
Date: Wed, 7 Aug 2019 15:07:33 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast
 mce
In-Reply-To: <20190807075226.GA10392@mypc>
Message-ID: <alpine.DEB.2.21.1908071504310.24014@nanos.tec.linutronix.de>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
 <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
 <20190807075226.GA10392@mypc>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_060830_298868_B34D2C80 
X-CRM114-Status: GOOD (  20.09  )
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
 tony.luck@intel.com, Peter Zijlstra <peterz@infradead.org>,
 kexec@lists.infradead.org, Jacob Pan <jacob.jun.pan@linux.intel.com>,
 x86@kernel.org, Michal Hocko <mhocko@suse.com>, linux-kernel@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Qian Cai <cai@lca.pw>, Dave Young <dyoung@redhat.com>,
 Xunlei Pang <xlpang@linux.alibaba.com>, Vlastimil Babka <vbabka@suse.cz>,
 Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Pingfan Liu wrote:
> On Wed, Aug 07, 2019 at 11:00:41AM +0800, Dave Young wrote:
> > Add Tony and Xunlei in cc.
> > On 08/05/19 at 04:58pm, Pingfan Liu wrote:
> > > This series include two related groups:
> > > [1-3/4]: protect nr_cpus from rebooting by broadcast mce
> > > [4/4]: improve "kexec -l" robustness against broadcast mce
> > > 
> > > When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
> > > to unexpected rebooting by broadcast mce. After analysis, I think only the
> > > following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
> > > to fix that issue.
> > 
> > I did not understand and read the MCE details, but we previously had a
> > MCE problem, Xunlei fixed in below commit:
> > commit 5bc329503e8191c91c4c40836f062ef771d8ba83
> > Author: Xunlei Pang <xlpang@redhat.com>
> > Date:   Mon Mar 13 10:50:19 2017 +0100
> > 
> >     x86/mce: Handle broadcasted MCE gracefully with kexec
> > 
> > I wonder if this is same issue or not. Also the old discussion is in
> > below thread:
> > https://lore.kernel.org/patchwork/patch/753530/
> > 
> > Tony raised similar questions, but I'm not sure if it is still a problem
> > or it has been fixed.
> > 
>
> Xunlei's patch is the precondition of the stability for the case 2: boot
> up by "kexec -p nr_cpus="

Correct. The only dangerous issue which is then left is that an MCE hits
_before_ all CPUs have CR.MCE=1 set. That's a general issue also for cold
boot. Thanks to the brilliant hardware design, all we can do is pray....

> For case1/3, extra effort is needed.
> 
> Thanks,
> 	Pingfan
> > > 
> > > *** Back ground ***
> > > 
> > > On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> > > broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.

Pingfan, please trim your replies and remove the useless gunk after your answer.

Thanks,

	tglx

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

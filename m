Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2DBA38DA
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 16:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qu8yAGqGVILbqLNGEC99U+l2omS08JaXXr3rViSokGk=; b=BJp5MENe6j5o2S
	j0B+qJIK+pUuDWkDv7YNPnGRogGVfg8PoshA50LqYDmZMODIvztGwafvcGd+y+wWSXy1MLOY0kIGB
	1rDnevbC+ZQN4lrt6NVO0DUb6hysagBtoOuJcneXxj43lXg9kx9Twoa3NyRDz0f2R+LqriY9/XT+4
	q2Y+D7vb6KJuLrUwVpOhQhruB7fk3q9oKCXBtT6Fi1NRPT0n8oqZl/d9fFL0CNIyPKt51DNcZHZMD
	i8FbIrtxem0dKsQAlTrIYxc/rUmqvuchctdR79k2APhWjEu8rSUhVsy0QL/OBJyIzm+ienVCj4tmR
	F22879QS0Meh/smTFjDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hdT-0002o5-57; Fri, 30 Aug 2019 14:12:19 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hdK-0002nR-DA
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 14:12:16 +0000
Received: from zn.tnic (p200300EC2F0AAA0001D832AAA778AB1D.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:aa00:1d8:32aa:a778:ab1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 46BA91EC0819;
 Fri, 30 Aug 2019 16:12:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1567174321;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=k4VwADrPCi5rLm3iNeYNw+tyHrRu79BZjudlrKpekYg=;
 b=F9omnknwKNcQNRrUDkeHN2K/2FZScCUieMKsW8X5Inwuq2W/fDvYXPwDsBSAdxwOstRlzC
 8U6TG6sJPO6WpQPvHdR0KYb3zwr06JuN73UjCV1R+66Fs3EI/KRXWNBr3zor+fQJmHNfqi
 d5ZALOPEaIeYtYTyEDITLpB5nK2kYlw=
Date: Fri, 30 Aug 2019 16:11:56 +0200
From: Borislav Petkov <bp@alien8.de>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCHv2 0/4] x86/mce: protect nr_cpus from rebooting by
 broadcast mce
Message-ID: <20190830141156.GB30413@zn.tnic>
References: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_071210_597923_A1BD818D 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Peter Zijlstra <peterz@infradead.org>, kexec@lists.infradead.org,
 Jacob Pan <jacob.jun.pan@linux.intel.com>, x86@kernel.org,
 Michal Hocko <mhocko@suse.com>, linux-kernel@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>, Ingo Molnar <mingo@redhat.com>,
 Qian Cai <cai@lca.pw>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 11:02:19AM +0800, Pingfan Liu wrote:
> v1 -> v2: fix compile warning and error on x86_32
> 
> 
> This series include two related groups:
> [1-3/4]: protect nr_cpus from rebooting by broadcast mce
> [4/4]: improve "kexec -l" robustness against broadcast mce
> 
> When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
> to unexpected rebooting by broadcast mce. After analysis, I think only the
> following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
> to fix that issue.
> 
> *** Back ground ***
> 
> On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
> 
> The option 'nosmt' has already complied with the above rule by Thomas's patch.
> For detail, refer to 506a66f3748 (Revert "x86/apic: Ignore secondary threads if
> nosmt=force")
> 
> But for nr_cpus option, the exposure to broadcast MCE is a little complicated,
> and can be categorized into three cases.

One thing is not clear to me: are you "fixing" a hypothetical case here
or have you *actually* experienced an MCE happening while kdumping with
nr_cpus < num_online_cpus()?

Btw, pls do not use lkml.org to refer to previous mails but

http://lkml.kernel.org/r/<Message-ID>

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D034A4E9B
	for <lists+kexec@lfdr.de>; Mon,  2 Sep 2019 06:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OI2r5M98f5p6DCUsIVpBGQs8hm7Inhj1ixqsBh8Ddc=; b=OFryVyDj01Xypm
	tZSOo8EN7prU1WFnKoKNx8I2WN9oZ4Nf3aKHpCQX6TJdp5tE6/o4BBfoxKM0qFLjm+g8OXxflRiHm
	VM1cHXi4As4Ctk4DM1ZFOg/I1JqjmrfOVaDbhDO9O0wHw3Rdrz1ErElKZii+CtOzbEQH8AO5VUMHK
	dJ34Z7uBjeBh2KeBY/l4MGQWqfKsUTgl3YHGhzcjwEFwN+U6C7rIBLUGfSKhQ6h1OOV5LbUXc3xCG
	SJ2ImPegSldXAjA0m97SWicCk2gP3TDDAicp7uC/azwVkObrCcKiLp25qYgrK7fzZ7K0uSbPek1DF
	Y6hoh0DT73L2RD8W0ojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dvi-0002is-Vx; Mon, 02 Sep 2019 04:27:02 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dvb-0002hy-Ln
 for kexec@lists.infradead.org; Mon, 02 Sep 2019 04:26:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id d10so2212298pgo.5
 for <kexec@lists.infradead.org>; Sun, 01 Sep 2019 21:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S99dbtNIAtu+fwZeUFVd1C5ofXlsVXppc5advXWFAIo=;
 b=B6vp5dOerKyW4NLf3UQOZPvA11me7OSFejt3Ba+/aik9Ypvc1YRH4Gy5f3yQguT6Hp
 b42hHB6zRWE4baUzr6mo6N/czsMsbYnTn3p6TXA2w9g6eSi7q+aILehWfoLrG99ZvU8h
 4pHRV774A4iRLlwoQ3bO+PXNHKp0Se3avQaoHLwexcJHb6D1aAzkpDWIQVW76bA6wqPl
 HcjBBVmCi79YdtG0UNFPJs8ySVDxmd6CRzSrD2gsHx5DHQP4wNW93jXFvqs9sZWV3I3B
 OXHgrE+CMZ41dAY7Hz701SORZdVgS+RuYPmlnUWVhJkSIBZlpfinaHTnUZZh0CsW5zLw
 rXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S99dbtNIAtu+fwZeUFVd1C5ofXlsVXppc5advXWFAIo=;
 b=KxczVTl4Tvr1O64qqROw9ypBpmBBJFiwYyWjrIUNCXyK9mvXBIZ0TUJToW/VdoLgXb
 fMI+cLxA28T0rH1lrj80w+2wS8htZmZHGiV6ZXy/Ar6nnN3eD8HOvRX772yC0MNY6LeB
 DWgeY7oGnKsncEJvhV/vv37GolJwCpur1lpxMYPKdcEr4OnIAIp0lkpbij6e3hpiw2r8
 weE8wvhLOvgcOV68ADiNwGzeE09AcwIKX6nAWl+IgTLxZNPrTeZoghuXZnwhxIlAzxud
 Kw7++JDSKCjalRY6zUNZB5GScmdYWOq8B3lG4UTsPcyDoSbT98nBFwZZkvZxpSbY13TP
 aUBw==
X-Gm-Message-State: APjAAAWsEEwR95POQ/pR3uUKkKJDOaE9lZUozLfdSw95lHEcBVKics7X
 zOFpfK3ImBCZIfAKTDO3UQ==
X-Google-Smtp-Source: APXvYqy1/ntAqH/lkVfec8bhetu106SKNH+oiBAtpTg7cylPfqWEAgUb9YKZna3G3hV1NsR8mP+xpg==
X-Received: by 2002:a17:90a:a47:: with SMTP id
 o65mr11128422pjo.90.1567398414855; 
 Sun, 01 Sep 2019 21:26:54 -0700 (PDT)
Received: from mypc ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s7sm2730630pjn.8.2019.09.01.21.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 21:26:54 -0700 (PDT)
Date: Mon, 2 Sep 2019 12:26:42 +0800
From: Pingfan Liu <kernelfans@gmail.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCHv2 0/4] x86/mce: protect nr_cpus from rebooting by
 broadcast mce
Message-ID: <20190902042642.GA22792@mypc>
References: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
 <20190830141156.GB30413@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830141156.GB30413@zn.tnic>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_212655_711807_0A28921F 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Aug 30, 2019 at 04:11:56PM +0200, Borislav Petkov wrote:
> On Tue, Aug 27, 2019 at 11:02:19AM +0800, Pingfan Liu wrote:
> > v1 -> v2: fix compile warning and error on x86_32
> > 
> > 
> > This series include two related groups:
> > [1-3/4]: protect nr_cpus from rebooting by broadcast mce
> > [4/4]: improve "kexec -l" robustness against broadcast mce
> > 
> > When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
> > to unexpected rebooting by broadcast mce. After analysis, I think only the
> > following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
> > to fix that issue.
> > 
> > *** Back ground ***
> > 
> > On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> > broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
> > 
> > The option 'nosmt' has already complied with the above rule by Thomas's patch.
> > For detail, refer to 506a66f3748 (Revert "x86/apic: Ignore secondary threads if
> > nosmt=force")
> > 
> > But for nr_cpus option, the exposure to broadcast MCE is a little complicated,
> > and can be categorized into three cases.
> 
> One thing is not clear to me: are you "fixing" a hypothetical case here
> or have you *actually* experienced an MCE happening while kdumping with
> nr_cpus < num_online_cpus()?
No, I do not hit this issue by myself.

But from the following two commits:
commit 5bc329503e8191c91c4c40836f062ef771d8ba83
Author: Xunlei Pang <xlpang@redhat.com>
Date:   Mon Mar 13 10:50:19 2017 +0100

    x86/mce: Handle broadcasted MCE gracefully with kexec
And
commit 506a66f374891ff08e064a058c446b336c5ac760
Author: Thomas Gleixner <tglx@linutronix.de>
Date:   Fri Jun 29 16:05:47 2018 +0200

    Revert "x86/apic: Ignore secondary threads if nosmt=force"

This issue is in practice.

BTW, clarify one thing kdumping (kexec -p) will not suffer from mce
issue as described in case 2. Only "kexec -l" will.

> 
> Btw, pls do not use lkml.org to refer to previous mails but
> 
> http://lkml.kernel.org/r/<Message-ID>
OK, I will.

Thanks,
	Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

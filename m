Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3711101D6B
	for <lists+kexec@lfdr.de>; Tue, 19 Nov 2019 09:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvstS5xP/Y7EE971eYZmzOrS+ep33P78F4YRDQXYzFY=; b=aaDyW+QHGImwGj
	IqfnBCeqKaaB8CCD/hQu/8qsILX3nkpvIyW3b0bPnRodFuRPqnCCHlo0MspgBW7pSToUeBt5rUB3R
	K1aQYFO5qHa1z5HtyBPsb5ry/BrX7a8bR5FEbqcfL9b++0t15gXO3YEpApLukqo6T8evdhTfYOdb7
	NU3nVX/kKmBaSyEELReec5xTvn3VpsfWW47nkUkGF6K7uk9n2+wH+cJmtBCVAbMXucIa3g9T5PpAz
	YZY0OafM1TyaUWv9TGNym5MqPiKkv/mCZ+rY3hc9Zkr3YcF5lFcD1DoyhvsRFZs1wkpsj7i23ZnFb
	YRGPz7VuYmvBJ9gsh3WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyta-0002JB-TK; Tue, 19 Nov 2019 08:29:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWytU-0002Hl-3f
 for kexec@lists.infradead.org; Tue, 19 Nov 2019 08:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574152191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H20VJbl/HlqoZLKxB2eEkiVm9bjunStGFexdv/rH5Wg=;
 b=flJtGO6jT+DYa1t/XfLewJGlw+2/qTOj2VYrTLs2wFxoYgEC7OXC/ZC3ERC0B3iK0yrnOr
 vib0hFCSkxnUcOcUmcIqneXZUCGufD6M55LgK0LMUvcVAqMb92yBlGR+LX4mOBz6qYjoam
 mVKBI5X9WOTRVN0rNHxC5DBGiyVxa6A=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-Pc6ix3dqOOinpWzyZRpYiw-1; Tue, 19 Nov 2019 03:29:49 -0500
Received: by mail-lf1-f71.google.com with SMTP id v204so5907518lfa.0
 for <kexec@lists.infradead.org>; Tue, 19 Nov 2019 00:29:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LdTt3n+0i729FTDReSuLECgSQ4aS+lT8YABUAIgw7M4=;
 b=lfatirc5ndQu+kMK41nDwCBhJgKvZbTIamKZAr8LDJ0MhNc41T9uJDK9LKTFKWRurh
 bHknewyT6K4N/Rd0zHzIg3/L8LKfAtj3ZL3udsKV3Z0XfHfWcKXO5sYMnYHdmO6NsF1K
 AdjWPDWDFkY3tMghiht+0CRNmBMFz5sdmNkfMKglB/yIxtaZ4VfAMp1/XFc8NNFMW7Jd
 hK3XgjBYFEL0ZitY6mw12npkgqzuFt4DTjYKMKIIlM45+0vvaHpg6G5f8/TVXhth5sCy
 3ST4GxPJ6o7+P9SGCrQJDTPmIli7JXR7OMNX4uzBNbdDEYr/ahBInP4LfG9VMuHpPS5S
 pY/A==
X-Gm-Message-State: APjAAAVf6dvEj+YsuPJX3tqMPB72iiBHnw0663KmOVV0kixrr10WlxFH
 mttWYIGDeBnI06JVowg3wtPLYUqwDKH83jcDDtlZ8uO7b+xoxSqxwBATzwPJm+823HUANuvNRBQ
 Q+DAFlTaU5WGNPusJm5fSwxDWCMcAj2y/42wd
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr2467914ljj.235.1574152187805; 
 Tue, 19 Nov 2019 00:29:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqw2IC2bHi8fy/d2SRNiTEi36NRc3i9RixIH7XOkwEMkhAxGronTJF+riz7NT7kg7+QIn9WK1oeS0ClHOZKD/g0=
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr2467897ljj.235.1574152187559; 
 Tue, 19 Nov 2019 00:29:47 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
 <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
 <20191115015959.GI22427@linaro.org>
 <CAJ2QiJJOSspLKRh+jRB_o0o9nmeAsiFKzxGJ8R0pYPRM4iptmw@mail.gmail.com>
In-Reply-To: <CAJ2QiJJOSspLKRh+jRB_o0o9nmeAsiFKzxGJ8R0pYPRM4iptmw@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 19 Nov 2019 13:59:33 +0530
Message-ID: <CACi5LpO_fvzDiXP9+QLga_B7kozRRnE9ix4Xa=xvNx1Kvci=3Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: Pc6ix3dqOOinpWzyZRpYiw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002952_234132_71C5ED86 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:03 PM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Hi Akashi,
>
> On Fri, Nov 15, 2019 at 7:29 AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> >
> > Bhupesh,
> >
> > On Fri, Nov 15, 2019 at 01:24:17AM +0530, Bhupesh Sharma wrote:
> > > Hi Akashi,
> > >
> > > On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
> > > <takahiro.akashi@linaro.org> wrote:
> > > >
> > > > Hi Bhupesh,
> > > >
> > > > Do you have a corresponding patch for userspace tools,
> > > > including crash util and/or makedumpfile?
> > > > Otherwise, we can't verify that a generated core file is
> > > > correctly handled.
> > >
> > > Sure. I am still working on the crash-utility related changes, but you
> > > can find the makedumpfile changes I posted a couple of days ago here
> > > (see [0]) and the github link for the makedumpfile changes can be seen
> > > via [1].
> > >
> > > I will post the crash-util changes shortly as well.
> > > Thanks for having a look at the same.
> >
> > Thank you.
> > I have tested my kdump patch with a hacked version of crash
> > where VA_BITS_ACTUAL is calculated from tcr_el1_t1sz in vmcoreinfo.
> >
>
> I also did hack to calculate VA_BITS_ACTUAL is calculated from
> tcr_el1_t1sz in vmcoreinfo. Now i am getting error same as mentioned
> by you in other thread last month.
> https://www.mail-archive.com/crash-utility@redhat.com/msg07385.html
>
> how this error was overcome?
>
> I am using
>  - crashkernel: https://github.com/crash-utility/crash.git  commit:
> babd7ae62d4e8fd6f93fd30b88040d9376522aa3
> and
>  - Linux: git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> commit: af42d3466bdc8f39806b26f593604fdc54140bcb

I will post a formal change for crash-utility shortly that fixes the
same. Right now we are having issues with emails bouncing off
'crash-utility@redhat.com', so my patches sent to the same are in
undelivered state at-the-moment.

For easy testing I will share the link to my github tree (off-line)
[which contains the changes] as well.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

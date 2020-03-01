Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B40174EFE
	for <lists+kexec@lfdr.de>; Sun,  1 Mar 2020 19:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDSLinH3nFT4WXlbHoQoeNC+3fUa3FguaJOjqr2uzWs=; b=RVKbOYRDpy4t/P
	07UMm+AWDfPo5X7lriRaa6rcN7SPaHE+ySXUapz1JHEsw+iSsDA+j5tvkb+3fekI0E1eWnz0X9zJs
	JdV+GpAhQl9pLupJQaPzGn8ul8NAsPylQyE2cH0dF2KcqpnFlhLnhh2AvEnlfudQGCTLpf3VQYpve
	oDhOZVClEhKQ63GIvl6PifpX/E3AvhXaap1EouYDovJnonaPOtFBq83oG5AKtJRAkofJrWwCz+bA6
	WfSKlOpYvCp1r9wyoZ7uMuVkS8xVcsmHhmoowahO7agHZzBOD7MLvssEyYL6636xzqJMDfDdjE3kY
	mHgqPmzKKHXzMUUiNBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8TgX-0007QD-H0; Sun, 01 Mar 2020 18:51:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8TgQ-0007Pf-O8
 for kexec@lists.infradead.org; Sun, 01 Mar 2020 18:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583088677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bBv1PaqI84OR7ZamB6hU1RX3meRGqQOzY6yStZIsnzQ=;
 b=U+5vtp0CN3VbR6BB3Dp9Hqs2dvFqnrqfnbI0lPXzWTe5akuF5CV9x0AYO4to6oirQsjGcS
 UEsL/hVrvGPX+QkOSvKZoLsfBSnOml3Ez0ljfm9IJs1b3R7atnsPJGtMT1tFEb3PaJ1BDA
 t3EzsBjxn3rb4ClQ3teGYFq/zjT4iLc=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-xgTb_IpwM8KXdXScP2W57g-1; Sun, 01 Mar 2020 13:51:12 -0500
X-MC-Unique: xgTb_IpwM8KXdXScP2W57g-1
Received: by mail-qk1-f198.google.com with SMTP id z124so7495002qkd.20
 for <kexec@lists.infradead.org>; Sun, 01 Mar 2020 10:51:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c6s2wpfyom9f4wC24MdxKamya+ELHtSfaNKwlRNT4kg=;
 b=sVPrFfSONL59cOEa8c2nZFxQ3kKjBQX1+fUc0qyhT1ng4W6kKb4ZjTkrdH9yxcC2MT
 Lki4UZWArmXNxrmaIxnh26E0Sk7dKuEEyyNvOG2aoaoWR0veKKLLeAajX1L4t7lqkTbz
 VtlqKWkWpuWNqogx2YJ7OLkdx8GkFg8IZfKwVQMyfsGJcWtv5CxF513O4miqSqBKivdq
 Fqcpci5S6PnWYHuYJKY0zCCnnQhcOA7GLLI4sK0o9admtYdfNAGZfapyv+f0UcYCyn1y
 k49O3jikZjMVUktrJEkq50sabQwXYKnq869ZqUT/26mWrhweuTTLh2wXR8tPV4wPaNcM
 KOmQ==
X-Gm-Message-State: APjAAAXIhzaL0jaxy2M4fWS6xsOZorYDvBOVHZ6RMdNEw2+OVR3fvL6F
 sgpinPWDfdPzgJjf/NrAWaBdxaGqyzu1HK0Aakcprp9OHgf7rCQVhMxjvlHll8Nbn6Z3UzHzniL
 lzCgL4km5IGXMFhivtrWtzZMDINKc8GnHTAIT
X-Received: by 2002:a05:620a:2ed:: with SMTP id
 a13mr13338442qko.482.1583088672312; 
 Sun, 01 Mar 2020 10:51:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxqGwO+FvyE1xeobotzJXSHgbNXCmenBgRM//qNqoNQUgOe9AN0SQCTLDrRSHRGNlGbmGT7Q2MmYvcnl3HSkE=
X-Received: by 2002:a05:620a:2ed:: with SMTP id
 a13mr13338427qko.482.1583088671959; 
 Sun, 01 Mar 2020 10:51:11 -0800 (PST)
MIME-Version: 1.0
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
In-Reply-To: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 2 Mar 2020 00:20:59 +0530
Message-ID: <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_105122_978271_C941FD9E 
X-CRM114-Status: GOOD (  23.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: gshan@redhat.com, Baoquan He <bhe@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Vivek Goyal <vgoyal@redhat.com>, Dave Young <dyoung@redhat.com>,
 Gavin Guo <gavin.guo@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Guilherme,

On Sat, Feb 29, 2020 at 10:37 PM Guilherme G. Piccoli
<gpiccoli@canonical.com> wrote:
>
> Hi Bhupesh and Dave (and everybody CC'ed here), I'm Guilherme Piccoli
> and I'm working in the same issue observed in RH bugzilla 1758323 [0] -
> or at least, it seems to be the the same heh

Ok.

> The reported issue in my case was that the 2nd kexec fails on Nitro
> instanced, and indeed it's reproducible. More than this, it shows as an
> initrd corruption. I've found 2 workarounds, using the "new" kexec
> syscall (by doing kexec -s -l) and keep the initrd memory "un-freed",
> using the kernel parameter "retain_initrd".

I have a couple of questions:
- How do you conclude that you see an initrd corruption across kexec?
Do you print the initial hex contents of initrd across kexec?
- Also do you try repeated/nested kexec and see initrd corruption
after several kexec reboot attempts?

I have the following observations on my Nitro instance:
- With upstream kernel (5.6.0-rc3), I am seeing that the repeated
kexec attempts even with 'kexec -s -l' and using 'retain_initrd' in
the kernel bootargs, can I lead to kexec reboot failures. Although the
frequency of the failure goes down drastically with these, as compared
to vanilla 'kexec -s' invocation.

Here are the aws console logs on the nitro console with kernel
5.6.0-rc3+ on an x86_64 instance when the 'kexec -s -l' or 'kexec -l'
with 'retain_initrd' fails:

login: [   80.077578] Unregister pv shared memory for cpu 1
[   80.081755] Unregister pv shared memory for cpu 0
[   80.209953] kexec_core: Starting new kernel
        2020-02-29T19:20:16+00:00
<.. no console logs after this (even after adding earlycon) ..>

- Note that there are no updated console log from the kexec kernel in
the failure case, so I am not sure if this was caused by some other
issue or the initrd corruption only.

- With the above, one needs to execute kexec reboot repeatedly and
normally in the ~ 11-15 kexec reboot run, you can see a kexec reboot
failure.

> I've noticed that your interesting investigation in the BZ led to
> SWIOTLB as a potential culprit, but trying with "swiotlb=noforce" or
> even "iommu=off" didn't help me.
> Also, worth notice a weird behavior: seems Amazon Linux 2 (based on
> kernel 4.14) sometimes works, or better saying, in some instances it
> works. I have 2x t3.large instances, in one of them I can make the
> Amazon Linux works (and to isolate potential out-of-tree patches, I've
> used Amazon Linux 2 config file and built a mainline 4.14, which also
> works in that particular instance).

That's good news, I am not sure about Amazon Linux (I am not sure if
the source for the same is available without buying a license).

I can share that "swiotlb=noforce" worked for me on one instance, but
the same was not reproducible on other nitro instances, so I think the
background issue is initrd corruption, but not able to pin-point at
the root-cause of the corruption yet.

BTW, have you been able to try the following kexec-tools fix as well
(see [1]) and see if this fixes the initrd corruption with 'kexec -s
-l' and 'kexec -l' (i.e. without using 'retain_initrd' bootargs)

[1]. http://lists.infradead.org/pipermail/kexec/2020-February/024531.html

> The reason for this email is to ask if you managed to figure the issue
> root-cause, or have some leads. I continue the debug here, but it's a
> bit difficult without access to AWS hypervisor (and it seems like a
> hypervisor issue for me). The fact that preserving the initrd memory
> prevents the problem seems to indicate that after freeing such
> high-address memory, the hypervisor somewhat manages to use that
> regardless if some other code is using that...ending up corrupting the
> initrd.
>
> I've also looped the kexec list in order to grow the audience, maybe
> somebody already faced that kind of issues and have some ideas.
> A collaboration in this debug would be greatly appreciate by me, it's a
> quite interesting issue and I'm looking forward to understand what's
> going on.
>
> Thanks in advance,

Thanks a lot for your email.
Let's continue discussing and hopefully we will have a fix for the issue soon.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

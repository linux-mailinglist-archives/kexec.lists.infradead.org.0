Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64B610A977
	for <lists+kexec@lfdr.de>; Wed, 27 Nov 2019 05:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhqMM5HVdZ4pu7sWoiiKU8tF+RAfKUtUCFwbQ1Lx1FY=; b=Ef3wjCEjaaZrRn
	xm2iPqQlAmQ4ewNA84VhTyNknD0dYQf632gO5kwlqx45GkfuLG2dL0/yXOaLjImhC2zJD/jftcfwO
	hth5OUOH+qxWPikA2Ev/uJNbns7bgNBOmfVLgz5aVdbGAXiPeZZ4V3HV5gi1dGLpSYhdpH2Fu4LxJ
	/RdJhQrauEL3AOPu/5TGh+Z/zwsdi8xo4Q7BIxB9+myztwq5RyEIHuYRf0DZpeRm0bQ7W9JL8cz/n
	Tdhl+SIhg3ZHAdGNcBNCIYEn/LF85XB9xaz51q+aVte9VmX0HriOM0vAod9hbIf340wMKkf4GrpGv
	om8sa71EDbJsSDRD5gng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpI3-0005dv-3d; Wed, 27 Nov 2019 04:50:59 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZpHz-0005dR-Gt
 for kexec@lists.infradead.org; Wed, 27 Nov 2019 04:50:57 +0000
Received: by mail-il1-x142.google.com with SMTP id t9so193123iln.4
 for <kexec@lists.infradead.org>; Tue, 26 Nov 2019 20:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LLltmI1FHxWwuuBqagaTZ9BGc47lJEKBlZ1h37KVjME=;
 b=Ayhk/RNMhLhNkAR6Kl/pAHlXpOLldiCZxiVN2KQetSguJflZxvm+oQfWpArpB9HZUD
 ve8DwbwO3C08+bBFhCxc28AVCjg4Gm46Xrkr9gx/JOfXIVqMVm8MFSnYqRIBG7Tzab6l
 e5nRxI8QikTq2v93K4aiHzg8CYQirWvFU0JPN1/Pv4PN5rtwVJBw8eS75FlIZgGi3IcI
 jt9wilegh28OCOzJogKjYEXvbjSKQwGcx7/eR8jOpDYmVclWkmmRAqKo0p4xnliuL/o9
 Q8HF5Oo9jWBqrSgM3NnTghQN179PISvl4U+apm+G2up73f/qwNYcl0U97XkSfv+pJN9o
 VYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LLltmI1FHxWwuuBqagaTZ9BGc47lJEKBlZ1h37KVjME=;
 b=GvCmECHQR2FirWgNpxMcuXTQ4qayHGBJ6ie1PwtnS0TlcgjXasni2JCKZ37s4sgMfS
 PMdnd2rLTO0IebH15fTLMRJPrHCWrypzPyIQarR/qCgHbUKVJwc1b09VhLy8FEyH7YPY
 erJIpVnZ5VSGmy1oXpISe9VlaRefAEFAQrL9nAgn8F2bj+Gcg8P7PfuVIkN/r85pCgEe
 VcIj/S9sxxSNnTJljqR+7ymimwIxAzXuCENEjIpBBqMmrTTLwadhPibbJXN8Q5WaYwFF
 hxv2//YQ2XSCaVZLoEKohncST1lIn2A+b6gucfSRFVoT4c2S4Ihyqi2z1T/lGU2AqCCs
 43aA==
X-Gm-Message-State: APjAAAUY4U18css24vBdHec1ulzGlm+MDHB/1H0ycn09EzppjwPHcHb7
 eUf/kFKszPivaG/DZV5IiP1aAbrg3Mp7e9YPqk8=
X-Google-Smtp-Source: APXvYqyc2SEaSR44FsHyTa8Xfv0zS4p0nRJJ3sysAUKY4nfhirRJZsNYOH2YMp9+zO716Lkf3CtSbTnall/5zsejnx0=
X-Received: by 2002:a92:6f05:: with SMTP id k5mr41286120ilc.98.1574830252126; 
 Tue, 26 Nov 2019 20:50:52 -0800 (PST)
MIME-Version: 1.0
References: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
 <CACi5LpPosB9TbVBoG8CVdax0e7pJjpZQUQF2ZB3LciNohXRraQ@mail.gmail.com>
In-Reply-To: <CACi5LpPosB9TbVBoG8CVdax0e7pJjpZQUQF2ZB3LciNohXRraQ@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Wed, 27 Nov 2019 10:20:41 +0530
Message-ID: <CAJ2QiJKK1Q9_g68OpHNdErRSU4hwOx4VtkPkBsvyfG_RJjgpQg@mail.gmail.com>
Subject: Re: kexec-tools/vmcore-demsg: No program header covering vaddr
 0xffff000be7a00000found kexec bug?
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_205055_584733_35D23988 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thanks Bhupesh for replying

On Wed, Nov 27, 2019 at 2:42 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Prabhakar,
>
> On Tue, Nov 26, 2019 at 1:04 PM Prabhakar Kushwaha
> <prabhakar.pkin@gmail.com> wrote:
> >
> > Hi All,
> >
> > I am facing issue below error with latest kexec-tools/vmcore-demsg tools.
> >
> > $ ./build/sbin/vmcore-dmesg /proc/vmcore
> > No program header covering vaddr 0xffff000be7a00000found kexec bug?
> >
> > I am testing on AARM64 platform with following git repos.
> > A) kexec tools:
> > https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> > top commit: bd077966e2b9041c (kexec-tools: Fix conversion overflow
> > when compiling on 32-bit platforms)
> >
> > B) Linux:git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > top commit: af42d3466bdc8f3980 (Linux 5.4-rc8)
> >
> > I am seeing similar issue in past also in couple of discussions. has
> > it not fixed earlier or it keep arises with time to time
> >
> > Please suggest.
>
> Thanks for reporting the issue.
> I think the issue with the latest ARM64 kernel and kexec-tools is the
> same as the makedumpfile, i.e. the PAGE_OFFSET calculation needs to be
> dynamically done for 52-bit VA_BITS correctly as well.
>

Yes we need dynamic approach of calculating VA_BITS.

Please note, the AARM64 platform used by us is 48Bit.
CONFIG_ARM64_VA_BITS_48=y
CONFIG_ARM64_VA_BITS=48
CONFIG_ARM64_PA_BITS_48=y
CONFIG_ARM64_PA_BITS=48

As per my understanding, this issue is not because of 52 bit. It is
due to patch 14c127c957c1 ("arm64: mm: Flip kernel VA space") in
Linux.
i.e. PAGE_OFFSET address has been moved to bottom instead of middle in
kernel virtual address space.

As below changes solves mentioned kexec-tools/vmcore-demsg problem.

diff --git a/kexec/arch/arm64/crashdump-arm64.c
b/kexec/arch/arm64/crashdump-arm64.c
index 4fd7aa8..1c28b06 100644
--- a/kexec/arch/arm64/crashdump-arm64.c
+++ b/kexec/arch/arm64/crashdump-arm64.c
@@ -58,6 +58,8 @@ static uint64_t get_kernel_page_offset(void)
 {
        int i;

+       return 0xffff000000000000;  --> PAGE_OFFSET
        if (elf_info.kern_vaddr_start == UINT64_MAX)
                return UINT64_MAX;

Also, I verified by moving one patch below 14c127c957c1 in Linux, no
changes required in kexect-tools. Everything works fine.

The calculation used in makedumpfile (your patches), indirectly takes
care of this.  So we need similar calculation here in kexec also.



--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

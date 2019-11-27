Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F078510B870
	for <lists+kexec@lfdr.de>; Wed, 27 Nov 2019 21:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMl2SDfa98EGfitIuevsnVOcj3x9nrXJUVB+LekskIg=; b=JhhqLjqL5Gn7L9
	g+AJm7MokVJGO02gJR7fhVAfNuZgsSUORHeiRu+Iv2n38EHe+QYt7QAK4iPOPLXPTU5ZKpx1ApEUD
	sx5Td6tv9EKtLIGNitX9E3SphuiTR/3iQ5SoDr3oWGKdtdJP1s0Oa2K4FARIm4E7PcYpf/3XtEUf6
	eZEJgFrxgSUp/kvPUYwMWcLkfb/H8KxHF317vmoJGem8ih8GNPZWgKZoaYrH91gIXwKChYVv625ob
	TKxJ4+eeTe+DZgJx9F/dFsH97X7ZmEnKithBh5YYGNjwtMm+E3lr5Qvjhy5JPn0g917o4fqnW1Lqn
	l5uhE1ito8eRLP22EPoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia49p-0007V3-LO; Wed, 27 Nov 2019 20:43:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia49l-0007Tm-PM
 for kexec@lists.infradead.org; Wed, 27 Nov 2019 20:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574887403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dVr90bKNKbUproBReV0B6viAVSDy4onsWHkWwSsgFQs=;
 b=GoS9fSY+LyuIHd9sNmH7TX8gA3lE8kp1cH+ZEDk/Jzj0DeKuJk0DEOpBiDDM54SlIt1wuW
 kWIBa5FpyVmwXYI1fwr3N1nr/C5/b7i1YBs4UqkwndINtK12W8F/73QYHWTNSJVrtnpxTD
 0RZxesOzw71217H58bZDxtBtOWTmKng=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-TyTo2X-WPriDBlzUp6KJjQ-1; Wed, 27 Nov 2019 15:43:18 -0500
Received: by mail-lj1-f197.google.com with SMTP id d16so4367244ljo.11
 for <kexec@lists.infradead.org>; Wed, 27 Nov 2019 12:43:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SHnYXgzPMmWjaeqO0kAch5HVRjhbobv2AUEzxu23Gmw=;
 b=OQp268gqe4DqjT+4TmhlUbPGtTTbzSf0JVOWtw7z+H4eHthTneQMuW7RSGHWffSZuL
 iawdsQonzjIrDpwNTqHegrEG14AJOMOQzZVaDOcT+ioFYAPOupoWXymUqgzmvdDPBlY2
 GvGMy0xfOdLbCcYNm4TDJxHebko1xKtKRhEH0EX1mJDqVvgUuYO4fJzVFQdWJPrIL8hP
 Z3oGyA1xauvrqShiOK4HPrA41GtxPD2AgHMwWoEkw0PYQlEwNlPJvFJ5kkQUhmP86ISV
 FmHWLzfmEqSuIJ8YZkYj8Fk8oOMEroPaPpDXLT7c+JjER3Lt2hJx9RHZnVLxp3i4CC3q
 cJ8g==
X-Gm-Message-State: APjAAAU6QqrOe/TiBeh4ob53OYfz3OgBa1PpHBPPzS7RsqqBKPrFHJRV
 fIU9hF8UWWfOJoya+sROfLiELm/q4jk19GcsNCO0eSXpcB/sRsmJcwfW2XjyFJIMq4moZ1C1V5o
 2VTYuu0R9Ph06vBolmVJBbaCy0avR9eqiqtC4
X-Received: by 2002:ac2:4a61:: with SMTP id q1mr20649540lfp.36.1574887397505; 
 Wed, 27 Nov 2019 12:43:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9Oy3GS8Wz4FNm5P3WHQUP2+T74GEHL+rBdQMVd0JoMbe6UmOnfGmHPXL6b2iGg9ziUz0jpT2jGEcihSM+Xeo=
X-Received: by 2002:ac2:4a61:: with SMTP id q1mr20649528lfp.36.1574887397226; 
 Wed, 27 Nov 2019 12:43:17 -0800 (PST)
MIME-Version: 1.0
References: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
 <CACi5LpPosB9TbVBoG8CVdax0e7pJjpZQUQF2ZB3LciNohXRraQ@mail.gmail.com>
 <CAJ2QiJKK1Q9_g68OpHNdErRSU4hwOx4VtkPkBsvyfG_RJjgpQg@mail.gmail.com>
In-Reply-To: <CAJ2QiJKK1Q9_g68OpHNdErRSU4hwOx4VtkPkBsvyfG_RJjgpQg@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 28 Nov 2019 02:13:00 +0530
Message-ID: <CACi5LpPP3kNrokpbN6fjkVjyuGCwVh61SCpoDL3WczMz7x6hbg@mail.gmail.com>
Subject: Re: kexec-tools/vmcore-demsg: No program header covering vaddr
 0xffff000be7a00000found kexec bug?
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: TyTo2X-WPriDBlzUp6KJjQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_124326_098352_F46BE001 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

 Hi Prabhakar,

On Wed, Nov 27, 2019 at 10:20 AM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Thanks Bhupesh for replying
>
> On Wed, Nov 27, 2019 at 2:42 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Hi Prabhakar,
> >
> > On Tue, Nov 26, 2019 at 1:04 PM Prabhakar Kushwaha
> > <prabhakar.pkin@gmail.com> wrote:
> > >
> > > Hi All,
> > >
> > > I am facing issue below error with latest kexec-tools/vmcore-demsg tools.
> > >
> > > $ ./build/sbin/vmcore-dmesg /proc/vmcore
> > > No program header covering vaddr 0xffff000be7a00000found kexec bug?
> > >
> > > I am testing on AARM64 platform with following git repos.
> > > A) kexec tools:
> > > https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> > > top commit: bd077966e2b9041c (kexec-tools: Fix conversion overflow
> > > when compiling on 32-bit platforms)
> > >
> > > B) Linux:git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > top commit: af42d3466bdc8f3980 (Linux 5.4-rc8)
> > >
> > > I am seeing similar issue in past also in couple of discussions. has
> > > it not fixed earlier or it keep arises with time to time
> > >
> > > Please suggest.
> >
> > Thanks for reporting the issue.
> > I think the issue with the latest ARM64 kernel and kexec-tools is the
> > same as the makedumpfile, i.e. the PAGE_OFFSET calculation needs to be
> > dynamically done for 52-bit VA_BITS correctly as well.
> >
>
> Yes we need dynamic approach of calculating VA_BITS.
>
> Please note, the AARM64 platform used by us is 48Bit.
> CONFIG_ARM64_VA_BITS_48=y
> CONFIG_ARM64_VA_BITS=48
> CONFIG_ARM64_PA_BITS_48=y
> CONFIG_ARM64_PA_BITS=48
>
> As per my understanding, this issue is not because of 52 bit. It is
> due to patch 14c127c957c1 ("arm64: mm: Flip kernel VA space") in
> Linux.
> i.e. PAGE_OFFSET address has been moved to bottom instead of middle in
> kernel virtual address space.

Well the changes for flipping the kernel VA space on arm64 was need
for introducing the 52-bit VA address space.
You can look at Steve Capper's 53-bit patchset for details which was
finally merged in the mainline [of which 14c127c957c1 ("arm64: mm:
Flip kernel VA space") is a part]:


> As below changes solves mentioned kexec-tools/vmcore-demsg problem.
>
> diff --git a/kexec/arch/arm64/crashdump-arm64.c
> b/kexec/arch/arm64/crashdump-arm64.c
> index 4fd7aa8..1c28b06 100644
> --- a/kexec/arch/arm64/crashdump-arm64.c
> +++ b/kexec/arch/arm64/crashdump-arm64.c
> @@ -58,6 +58,8 @@ static uint64_t get_kernel_page_offset(void)
>  {
>         int i;
>
> +       return 0xffff000000000000;  --> PAGE_OFFSET

Yes, you are hardcoding the PAGE_OFFSET as 0xffff000000000000 for a
vabits_actual value of 48-bits and it will work fine on platforms
which don't support ARMv8.2 LVA extensions (i.e. ARM v8.2), however on
real ARMv8.2 hardware the PAGE_OFFSET value should be
0xfff0000000000000 (for vabits_actual value of 52 bits). See '52-bit
VA support in the kernel' section in
<https://www.kernel.org/doc/Documentation/arm64/memory.rst> for
details.

I think I have found a more generic solution to the issue, but I still
need to verify on the ARMv8 simulator model (as I need to test othe
same on 52-bit platforms as well).

Regards,
Bhupesh

>         if (elf_info.kern_vaddr_start == UINT64_MAX)
>                 return UINT64_MAX;
>
> Also, I verified by moving one patch below 14c127c957c1 in Linux, no
> changes required in kexect-tools. Everything works fine.
>
> The calculation used in makedumpfile (your patches), indirectly takes
> care of this.  So we need similar calculation here in kexec also.
>
>
>
> --pk
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

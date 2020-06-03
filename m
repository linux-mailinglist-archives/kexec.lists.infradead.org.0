Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E935D1ED786
	for <lists+kexec@lfdr.de>; Wed,  3 Jun 2020 22:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEhYPCQOmOQnAopGDTgH2vi4PRoOLeA/h6ecdv9wOLM=; b=BQUIsu6neCUHuU
	uFmzD+bSfYmAUjtUj3/hiblxImuTljbtaN6x1R0W23YioaTUlGBACyM/5fa1PsdBQcQ3HOgFUyZe5
	o1aMHFiPVzXR2I9opJcD4FbOabveKrrYq+Udku0AYG+T32i7iyrB81pL0aK5VbyETBrmTbNY86puy
	G4DX00Jj+n5pPJBV3sn65Y8YsvrJSUiiEloGr8022mqs2xx87UE9QZo6iBeb2U+izgTF4U8ihtiGd
	NlZ5jUhLyyPhxAgcrgY3sr3wsOzJdBOrgl2o7e0ezokNG5UDb18LG/r0XUC2DXgeDRpdGTz1eT2fi
	MaQC8SuQA/VUxxlTi4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgaAc-0006ru-Rv; Wed, 03 Jun 2020 20:39:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgaAT-0006jQ-7h
 for kexec@lists.infradead.org; Wed, 03 Jun 2020 20:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591216758;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7qXutEZtbDBMnxHPxNkfv1ht6U8C9RNtapAPHQL9k7E=;
 b=ClW35iDe4HteCn1XIajwHExdxwHMg4xQiuJr8hKa3ZbnxLgcWV3fDABAeiciP14/SzCesO
 3/46OSDwjYmgjG2S1JlaXkbGd92s4/E3NX7FsceNXJEDvcxfy06wt79qFozs2+McZCRmo9
 lEH06szcSuDXq8v7gcKjDktcgoIuShI=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-o623m0azOUGfWR-1DMPZKA-1; Wed, 03 Jun 2020 16:39:12 -0400
X-MC-Unique: o623m0azOUGfWR-1DMPZKA-1
Received: by mail-qt1-f198.google.com with SMTP id p31so3008613qte.1
 for <kexec@lists.infradead.org>; Wed, 03 Jun 2020 13:39:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7qXutEZtbDBMnxHPxNkfv1ht6U8C9RNtapAPHQL9k7E=;
 b=QWfwqsWb/gLvDWiD2Oyf1QPwwvS59YftBOglPoiLzl2XwtGi0/QAGCP9TjPjnEAv6t
 qFxabl2Dx3g/H+Bo04Hg0CtkR1sB9jLLkXUTV7gKg50Hw9rgUlVOH7AHaN7HWBjMtiCV
 EO+Ayj+Ue34o8MY94PFPJm+qTXuHcs1aOo1LD8BCO+6kt2GrhUb2K9mYSO2xkVS48le8
 w8zkGomk0dyrD2Gk7lD2Dh89Yoa5VwTgNtjWthDDmh+Q4iNoqRmJL1g/fmdcGiBOYb4J
 V9mKjdwg/LK5foBohNPEmdv+6c28mNJnxxTnTYCVdHZlVOfUwZF2uYJmYTsppmV6YcEv
 vPeg==
X-Gm-Message-State: AOAM532RD4Z0G1V6DOaqFAXtFFdYpnhiNtQFY9D7SDZ51sBHJtr3Ys7w
 jYGccDja4UxH7tJ9WlE+TEBgr7QRIak2ieCWP0GrCdPL4LK9KRKTD6cu9YgLCVcd177rx6hWhd8
 HaKYyEl5P6jUxAecVu7tHtvMsEIZTQ5cYZCnP
X-Received: by 2002:ac8:4d03:: with SMTP id w3mr1222315qtv.200.1591216752190; 
 Wed, 03 Jun 2020 13:39:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyX+YaZBQVbV2mhorUVRsDMl0Wf97S2ntVZndHXWse1f45tLhDNwlcPqJjxs9yW7dXPLwuee+I38exKcoMgNnI=
X-Received: by 2002:ac8:4d03:: with SMTP id w3mr1222300qtv.200.1591216751906; 
 Wed, 03 Jun 2020 13:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-6-git-send-email-bhsharma@redhat.com>
 <8a982138-f1fa-34e8-18fd-49a79cea3652@arm.com>
 <b7d8d603-d9fe-3e18-c754-baf2015acd16@redhat.com>
 <51606585-77a3-265f-1d4e-19f25a90697d@broadcom.com>
In-Reply-To: <51606585-77a3-265f-1d4e-19f25a90697d@broadcom.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 4 Jun 2020 02:08:59 +0530
Message-ID: <CACi5LpPXdcJ7AmFWiSyM8rG_+7C=wTqiP0oCa9QAPe0Y0_wH=Q@mail.gmail.com>
Subject: Re: Re: [RESEND PATCH v5 5/5] Documentation/vmcoreinfo: Add
 documentation for 'TCR_EL1.T1SZ'
To: Scott Branden <scott.branden@broadcom.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_133921_347718_B0553507 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linuxppc-dev@lists.ozlabs.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Scott,

On Thu, Jun 4, 2020 at 12:17 AM Scott Branden
<scott.branden@broadcom.com> wrote:
>
> Hi Bhupesh,
>
> Would be great to get this patch series upstreamed?
>
> On 2019-12-25 10:49 a.m., Bhupesh Sharma wrote:
> > Hi James,
> >
> > On 12/12/2019 04:02 PM, James Morse wrote:
> >> Hi Bhupesh,
> >
> > I am sorry this review mail skipped my attention due to holidays and
> > focus on other urgent issues.
> >
> >> On 29/11/2019 19:59, Bhupesh Sharma wrote:
> >>> Add documentation for TCR_EL1.T1SZ variable being added to
> >>> vmcoreinfo.
> >>>
> >>> It indicates the size offset of the memory region addressed by
> >>> TTBR1_EL1
> >>
> >>> and hence can be used for determining the vabits_actual value.
> >>
> >> used for determining random-internal-kernel-variable, that might not
> >> exist tomorrow.
> >>
> >> Could you describe how this is useful/necessary if a debugger wants
> >> to walk the page
> >> tables from the core file? I think this is a better argument.
> >>
> >> Wouldn't the documentation be better as part of the patch that adds
> >> the export?
> >> (... unless these have to go via different trees? ..)
> >
> > Ok, will fix the same in v6 version.
> >
> >>> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> >>> b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> >>> index 447b64314f56..f9349f9d3345 100644
> >>> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> >>> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> >>> @@ -398,6 +398,12 @@ KERNELOFFSET
> >>>   The kernel randomization offset. Used to compute the page offset. If
> >>>   KASLR is disabled, this value is zero.
> >>>   +TCR_EL1.T1SZ
> >>> +------------
> >>> +
> >>> +Indicates the size offset of the memory region addressed by TTBR1_EL1
> >>
> >>> +and hence can be used for determining the vabits_actual value.
> >>
> >> 'vabits_actual' may not exist when the next person comes to read this
> >> documentation (its
> >> going to rot really quickly).
> >>
> >> I think the first half of this text is enough to say what this is
> >> for. You should include
> >> words to the effect that its the hardware value that goes with
> >> swapper_pg_dir. You may
> >> want to point readers to the arm-arm for more details on what the
> >> value means.
> >
> > Ok, got it. Fixed this in v6, which should be on its way shortly.
> I can't seem to find v6?

Oops. I remember Cc'ing you to the v6 patchset (may be my email client
messed up), anyways here is the v6 patchset for your reference:
<http://lists.infradead.org/pipermail/kexec/2020-May/025095.html>

Do share your review/test comments on the same.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

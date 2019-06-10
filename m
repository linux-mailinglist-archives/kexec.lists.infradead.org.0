Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F34C3B03B
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 10:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sAy9xmkhf1nZirAPQwnkHaf/3tIUSi7C38l5N2eFGs=; b=nmXFrQmJ43sjg4
	9i3ZppFiXZornYexERLIFylIwJihlvMOIKPMvATneMG4LfFQLHHqVFvcjtuC06GfNMrF+SsLsUFyW
	Khwgtj7WyCADG2nr+OtlqlZMT+iUJp73l48xlKaBewvbeF0sNOlzqkDLcihea1you8OC4UuSfkk2j
	hCsOkOq56JgFnpFy9RHbZQPmfkZi7Q/wUg2JSGAO4calOEz/MyAZeqNSzE1vPMFgvrfrCwfvyF97e
	pqb8XCnDIUnW7GLqwj459ExPXKtYwGaQfhV8HBF1C2Rn6uOzZpmg6m8v5+qM4xB74kpH0nMLucxEH
	xRqbnwDiGbLVSvYW07BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFOA-0003Ff-3s; Mon, 10 Jun 2019 08:10:46 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFO6-0003Eq-BN
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 08:10:43 +0000
Received: by mail-it1-f194.google.com with SMTP id n189so11827206itd.0
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 01:10:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QHvG/+q2Hs/5fy8yvewm2IisnqeVQ2P3VYNLJg9vsNk=;
 b=WyPjhRkW0zSjfIAcamyabI2dQUBFW+S1iVj1Xb3pudzyaWS3WQOmv9bTuRzpxiCzUE
 zLlBmYvfyHTHFxgkVpie7HlOi/1z5sMERflJDvHa4NVoQjk1bpGTTKtlkwXXMcs5iNVd
 WwhJmnv9Z/A3l/J6A5DytjtIwfo3r3O4O7d24PBtyZKQc/zybUEz3m803CJf2wzZ3k44
 rXchpS189TnANuuSN3GgAguVs4yHRge8Mo01br8U22hM1Q//WH+vsQRR4lPF1QeSxpG2
 uGJuJkxKar4IkWJ9Yk3j9aCvmWg7SrweFKWjmmFaYE4qGjmJaOG9UlPMaK6Rb/ZJXOs2
 g6rQ==
X-Gm-Message-State: APjAAAWNGo/P3zErBm1MDFbeJc5ulfGci7jk+aUbIkAZ4VEg2H9upG1d
 //6NiWKmmKltq3ne7fHCfO0xj1kKC1esAGNea/qWlg==
X-Google-Smtp-Source: APXvYqxQdnjQHpa9myGpQS72H2v1KvrZFRdbk9nUQ4ifJ8R9j3FXvpkH+B3wtK6qe8a8phF54m/7alVC2ObMX6kl/d0=
X-Received: by 2002:a24:2e8c:: with SMTP id i134mr12861642ita.9.1560154241298; 
 Mon, 10 Jun 2019 01:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190524062321.24126-1-kasong@redhat.com>
 <20190531092743.qgwku2ob4trduadr@verge.net.au>
In-Reply-To: <20190531092743.qgwku2ob4trduadr@verge.net.au>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 10 Jun 2019 16:10:30 +0800
Message-ID: <CACPcB9dOSwe1s2Z5W3ccwXSR_h_Y33cqnt2d=TPZ4hX+fpqdrA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] x86: Always try to fill acpi_rsdp_addr in boot
 params
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_011042_393121_8CB0A6B2 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 5:27 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Fri, May 24, 2019 at 02:23:17PM +0800, Kairui Song wrote:
> > This patch sync the behavior of user space kexec and kexec_file_load,
> > they will both fill the boot_params.acpi_rsdp_addr with a valid RSDP
> > value, to make sure second kernel can always get the RSDP consistently.
> >
> > This will make it effortless to boot newer version of kernel (5.0+)
> > without specifying acpi_rsdp= cmdline on EFI system even with EFI
> > service disabled. Should not change any behavior with older kernels.
> >
> > Update from V2:
> >   - Drop unneeded 'packed' attribute for boot parameters structure
> >   - Don't trust kernel cmdline as a reliable acpi rsdp source
> >
> > Update from V1:
> >   - Split into multiple patches for a cleaner structure, content is not
> >     changed.
>
> Thanks Kairui,
>
> applied.

Hi Simon,

I still haven't see this series get merged yet in the git repo, any update?

--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

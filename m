Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7812E1A5
	for <lists+kexec@lfdr.de>; Thu,  2 Jan 2020 03:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcncQ/Aj2Xjq3LFWEfdobmT0RzTi328XX36h2osG+N0=; b=XfPrHaPfvoVq4M
	1OftpXVYWVQKp4NGf49psYPu9U13DoeDxgpwdG/qOgbQnvHcvvQId3Q+EGsMdEq7SJYUI4M+yXKVj
	yryIG7oMnyFAqFS5sCbsczW9wCVnPiQqSLVgyzlQ4ulEqcFN7XclmiF6ouxGXej0O406bgLzsw/ga
	VxgVqvIJpD+ARvjU9kysqSwNTBRbj3W/bsse8aHh/oSL3/I3f6HDoBGuKPgJj1gSCu/s3lT+vUzwC
	8WD1QCC0IMWLBIDcA3ajGiIXAMykwsLTRmTpUdeNSMoiyIZfg2C9nu9BJvChSRUX/tTdt76Z9h19r
	4N2S1SPnOtIbSv67/klw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imq7C-0004yU-0X; Thu, 02 Jan 2020 02:21:34 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imq75-0004xi-Ih
 for kexec@lists.infradead.org; Thu, 02 Jan 2020 02:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577931684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FlPAa7doWPEFbRqzPKyUG9DNrgIIpJkhHUoDFGrmf3E=;
 b=cIcgexlfeLFo/8RSheRSk31obcyh8bU+DcGsDyqgJXss73CHW2Jsu2KqX2zPzv9aXyCDnV
 zWX03aFV75ElDiiQVYekUg6OiwcBpsHn2zRgYxj7CWJ8uFqqvTREPkGTxu+Y/wYWsDGZjq
 QyazUY9nW4yOgow/trSxEyPqVb7oLmw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-tbtTMYaMMX-nky7n9hoCAQ-1; Wed, 01 Jan 2020 21:21:20 -0500
X-MC-Unique: tbtTMYaMMX-nky7n9hoCAQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E81278024E8;
 Thu,  2 Jan 2020 02:21:18 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-88.pek2.redhat.com
 [10.72.12.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 699747BFB8;
 Thu,  2 Jan 2020 02:21:14 +0000 (UTC)
Date: Thu, 2 Jan 2020 10:21:10 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
Message-ID: <20200102022110.GA29876@dhcp-128-65.nay.redhat.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
 <CAPcyv4hSB9B5tiKVwtNOgDS6KS2Pj6f962OPBZVZpPjrBt6Z8A@mail.gmail.com>
 <20200101061505.GA15717@dhcp-128-65.nay.redhat.com>
 <20200101062047.GA16393@dhcp-128-65.nay.redhat.com>
 <CAPcyv4ivPw7Z8y0yBT4j41=cgLqGjKafHHB==h=cC8aXvHK7Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4ivPw7Z8y0yBT4j41=cgLqGjKafHHB==h=cC8aXvHK7Kw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_182127_692842_D9823B46 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/01/20 at 10:36am, Dan Williams wrote:
> On Tue, Dec 31, 2019 at 10:21 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > > > Does kexec preserve iomem? I.e. as long as the initial translation of
> > > > efi entries to e820, and resulting resource tree, is preserved by
> > > > successive kexec cycles then I think we're ok.
> > >
> > > It will not preserve them automatically, but that can be fixed if
> > > needed.
> > >
> > > There are two places:
> > > 1. the in kernel loader, we can do similar with below commit (for Soft
> > > Reseved instead):
> > > commit 980621daf368f2b9aa69c7ea01baa654edb7577b
> > > Author: Lianbo Jiang <lijiang@redhat.com>
> > > Date:   Tue Apr 23 09:30:07 2019 +0800
> > >
> > >     x86/crash: Add e820 reserved ranges to kdump kernel's e820 table
> >
> > Oops, that is for kdump only, for kexec, should update the kexec e820
> > table.  But before doing that we need first to see if this is necessary.
> 
> We can cross that bridge later, but I expect it will eventually be
> necessary. The soft-reservation facility will become more prevalent as
> more platforms ship with DRAM differentiated memory ranges, like
> high-bandwidth-memory, and the system needs to reserve it from general
> kernel allocations. See commit 262b45ae3ab4 "x86/efi: EFI soft
> reservation to E820 enumeration" and commit fe3e5e65c06e "efi:
> Enumerate EFI_MEMORY_SP" for more details.

Ok, agreed the EFI_MEMORY_SP should be preserved across kexec reboot,
I think those firmware provided EFI_MEMORY_SP should be persistent
because the e820 table is just a copy.   But I have no such hardware
to test,  could you do a test to confirm if possible?

The test steps should be:
# -s means to use kexec_file_load syscall
kexec -s -l bzImage --initrd initramfs-file --reuse-cmdline 
reboot

Maybe this should be fine for the time being.  And
leave the faked mem only works once during the physical boot?

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

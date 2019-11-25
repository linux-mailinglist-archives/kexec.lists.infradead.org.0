Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC1B108877
	for <lists+kexec@lfdr.de>; Mon, 25 Nov 2019 06:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=118N2ulDpAwmEctHZ7pSG3kMwLwhYFuAHqZje8CxlV0=; b=cM0+rqUlvpf5iA
	vvGmAkQ4MMxjEkbgOg3R2od0udrMhiNPVBaqSd4XfR0HWFYBUTFE29hHv7NJ83ZkSWggGJMATAqIr
	2X4YHoQMFCsrojSrjVK7Zj4GYPD1csaAQCdaIk4+01gAmjIvS7doFrnDuqbgU9+E0VxzFNuYfxHbM
	wD7wgfRE0tD9A3zali+VgxVnErIZwqj6ch/vSgZNdoCr3UiFVBYsw1nhnkDIz3rMz1Ubx/Lw8Wh3c
	9fNmp4fsk2ehQFGAYhukEpsv/TgePDC/MJS+BCKAgmBhxQEj+7AKzALrXUW3t14cRss7tEeYKHFT8
	2FpjtfNvX9UMOfLU6FBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ7IK-00037V-MU; Mon, 25 Nov 2019 05:52:20 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ7IH-00036y-F3
 for kexec@lists.infradead.org; Mon, 25 Nov 2019 05:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574661134;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uYYoUTw7mDYpUvKp3ik9S4wEbrWP4Kv9LggG9gp+XVM=;
 b=eqTk22hhXWpSznRiT1lqCQG/FxWyWXdp+tZi2GxrtY68+FlkLtQrkpAA1B6ZBJC9pPUPIW
 kfBQM2uBFKsSaq0gv30PquyRSkjJV7/+ePdua5uaF2xl2jbzKh0RN2beJ8LhqkrkogRfJb
 se7aq6Q8C2+B8yDZ2gCbelrkFQkYEGI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-jmBvyL4WMY6xN-JIXAZlmA-1; Mon, 25 Nov 2019 00:52:10 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB837477;
 Mon, 25 Nov 2019 05:52:08 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-85.pek2.redhat.com
 [10.72.12.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 606015D9CA;
 Mon, 25 Nov 2019 05:52:04 +0000 (UTC)
Date: Mon, 25 Nov 2019 13:52:01 +0800
From: Dave Young <dyoung@redhat.com>
To: Michael Weiser <michael@weiser.dinsnail.net>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
 <20191122210702.GE32104@weiser.dinsnail.net>
MIME-Version: 1.0
In-Reply-To: <20191122210702.GE32104@weiser.dinsnail.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: jmBvyL4WMY6xN-JIXAZlmA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_215217_680118_EA52F6C7 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi@vger.kernel.org, kexec@lists.infradead.org,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 11/22/19 at 10:07pm, Michael Weiser wrote:
> Hi Eric,
> 
> On Fri, Nov 22, 2019 at 02:00:22PM -0600, Eric W. Biederman wrote:
> 
> > > esrt: Unsupported ESRT version 2904149718861218184.
> > >
> > > (The image is rather large at 18MiB as it has a built-in initrd.)
> > When did x86_64 get support for ARCH_KEEP_MEMBLOCK?  I can't find it
> > anywhere.
> 
> No, is hasn't. I temporarily hacked that in to see if it'd change
> anything and it did. Sorry to not be more clear about that.
> 
> > Fundamentally when deciding where to place a new kernel kexec (either
> > user space or the in kernel kexec_file implementation) needs to be able
> > to ask the question which memory ares are reserved.
> > What the buddy
> > allocator does is unimportant as kexec copies memory from all over
> > the place and places it in the destined memory addresses at the
> > time of the kexec operation.
> 
> > So my question is why doesn't the ESRT reservation wind up in
> > /proc/iomem?
> 
> My guess is that the focus was that some EFI structures need to be kept
> around accross the life cycle of *one* running kernel and
> memblock_reserve() was enough for that. Marking them so they survive
> kexecing another kernel might just never have cropped up thus far. Ard
> or Matt would know.

Can you check your un-reserved memory, if your memory falls into EFI
BOOT* then in X86 you can use something like below if it is not covered:

void __init efi_esrt_init(void)
{
...
	pr_info("Reserving ESRT space from %pa to %pa.\n", &esrt_data, &end);
	if (md.type == EFI_BOOT_SERVICES_DATA)
		efi_mem_reserve(esrt_data, esrt_data_size);
...
}

Unfortunately I noticed there are different requirements/ways for
different types of "reserved" memory.  But that is another topic..

Thanks
Dave 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

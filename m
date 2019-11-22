Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E991079E2
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 22:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U/3dGnK83miyUN/wTvSm5CFe6Au8flVwbqY7lamiaI=; b=J0/xR7EdJ5R//C
	OzITdUYddaiWo7D+NOasOLk09FLvSKsmq7sd19D+AZPH0DwkM5BXcBaYpOGEhNQKeH/SqKsIiOAzL
	0XB4FY3Tcnp6z8tiUCnh9u3zv4jpurmh2iUu8gD0PLPoLdy9xUUmPuLYoQSfcgv2EPD0rQYsbV3Vj
	lgZXQ7VpWw+dJtexZf6rngyrdc3drTiNrLYbHfxSBvu6Ec03PYoIcucoCm+IbZe2D8zc9RkFI/tJ1
	AHZlLgIX1TCfSCU1vsZYgLGrJlhlQxgaghfyx8qhVH2DTVUkETWNZ0T6kNAuuWbKlWHWAwTd8ylOF
	+sXkN0H5qhccEXkEUM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYGJD-0003rD-TU; Fri, 22 Nov 2019 21:17:43 +0000
Received: from heinz.dinsnail.net ([2a01:238:43b4:3200:9392:5dcc:2f0e:a960])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYGJA-0003qn-Ac
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 21:17:42 +0000
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
 by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id xAMLEhOU026814;
 Fri, 22 Nov 2019 22:14:43 +0100
Received: from eldalonde.UUCP (uucp@localhost)
 by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id xAMLEhvV026813;
 Fri, 22 Nov 2019 22:14:43 +0100
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id xAML72hT000413; 
 Fri, 22 Nov 2019 22:07:02 +0100
Received: (from michael@localhost)
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id xAML725G000412;
 Fri, 22 Nov 2019 22:07:02 +0100
Date: Fri, 22 Nov 2019 22:07:02 +0100
From: Michael Weiser <michael@weiser.dinsnail.net>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191122210702.GE32104@weiser.dinsnail.net>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blt3y949.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-dinsnail-net-MailScanner-Information: Please contact the ISP for more
 information
X-dinsnail-net-MailScanner-ID: xAMLEhOU026814
X-dinsnail-net-MailScanner: Found to be clean
X-dinsnail-net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_131740_513658_1F43FF13 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Eric,

On Fri, Nov 22, 2019 at 02:00:22PM -0600, Eric W. Biederman wrote:

> > esrt: Unsupported ESRT version 2904149718861218184.
> >
> > (The image is rather large at 18MiB as it has a built-in initrd.)
> When did x86_64 get support for ARCH_KEEP_MEMBLOCK?  I can't find it
> anywhere.

No, is hasn't. I temporarily hacked that in to see if it'd change
anything and it did. Sorry to not be more clear about that.

> Fundamentally when deciding where to place a new kernel kexec (either
> user space or the in kernel kexec_file implementation) needs to be able
> to ask the question which memory ares are reserved.
> What the buddy
> allocator does is unimportant as kexec copies memory from all over
> the place and places it in the destined memory addresses at the
> time of the kexec operation.

> So my question is why doesn't the ESRT reservation wind up in
> /proc/iomem?

My guess is that the focus was that some EFI structures need to be kept
around accross the life cycle of *one* running kernel and
memblock_reserve() was enough for that. Marking them so they survive
kexecing another kernel might just never have cropped up thus far. Ard
or Matt would know.

> Are you dealing with an embedded port that is being clever?

I'm not an expert but think it's rather the opposite: It's just a memory
area provided by EFI containing some potentially interesting information
about the EFI firmware structure itself. The aim is to aid firmware
upgrades. This information needs to survive kexec so the user would be
able to use that information (e.g. for upgrades) after a kexec.

So apart from leaving that memory untouched, I guess it could also be
copied over to a staging area by kexec explicitly to be preserved across
the kexec. Or it could be blanked out in such a way that the esrt driver
would not find it after kexec and just be unavailable, if it's decided
that you should only use data about a firmware for upgrades that you
really just used to boot. I guess a bigger question could be asked
whether it would actually be useful and safe for esrt to be available
after kexec.

> Or is there some subtle breakage now that x86 has memblock support that
> /proc/iomem is no longer being properly maintained?

Uuuh, let me backpaddle very hard here: x86 has not gained memblock
preserve support. That was just me mucking about. Sorry.
-- 
Thanks,
Michael

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

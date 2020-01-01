Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AAB12DD7E
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 04:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0fLCddb8lvSpXst8QaoMXVxpQLyu5mL948RJPr5b7M=; b=cMdJMsPYkM1gQh
	GJQIjQOADk5JHIBLW952Z/laQmPdyYqmuoiG0B/cTZwFN1EFt4qcCjZxL3TFe+fAmN3otpvi5GuS1
	9RKGCnNP90HF34pnzBkBNEV1GYHD29EAz8+hyj2Bzc+J77U/FEwJ6CelK1Xrjadf2M+jjNo1xCwYm
	H8ck3fRizde7XVg4ry+b42k91m7Yky0vEgP9+TyBsPby2mcXoqfjRsH4wB5+I0ja6GN673DaY7akx
	AnMJJmDP5rcbyp02MPkVSFDN/cIyEm3LKvGe+VL+cHwGIgqth6yAeHw2pW1wr/NlY0o+GsMLX4eqZ
	GhxJHBbAzhfUQIfOoEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imUcN-0003f5-Sa; Wed, 01 Jan 2020 03:24:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imUcJ-0003e7-W2
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 03:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577849050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Fv/kC8iDABf6sLfJmiILU6rh8XitUBjaUMc9ljl9uGs=;
 b=DIKp14tlgj+ZEIiJ5dn+6EMYcdAV6UqcSmBriDGCES2BlDupibA1qK+b9tHhe6pbEVvYTe
 NvIK4/kRv3zexIRiAwsTDo0y0gpoRjLLIXRNMjInQ6796D22sMIIWUy5jpEjP8XQxb/yBH
 yfyOnR9dDTE1EDPFFcDj/r5ad0i5zas=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-112-YecvINgbMrm6ZQxKgbv6vQ-1; Tue, 31 Dec 2019 22:24:05 -0500
X-MC-Unique: YecvINgbMrm6ZQxKgbv6vQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A58A7800EB8;
 Wed,  1 Jan 2020 03:24:03 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-60.pek2.redhat.com
 [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81CA660BE2;
 Wed,  1 Jan 2020 03:23:59 +0000 (UTC)
Date: Wed, 1 Jan 2020 11:23:55 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] efi: Fix handling of multiple contiguous efi_fake_mem=
 entries
Message-ID: <20200101032355.GA14346@dhcp-128-65.nay.redhat.com>
References: <157773590338.4153451.5898675419563883883.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20191231014630.GA24942@dhcp-128-65.nay.redhat.com>
 <CAPcyv4heY1CKAWo1AKKifYUtXdKjoUt45dZbCNhB2o59hkXY6g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4heY1CKAWo1AKKifYUtXdKjoUt45dZbCNhB2o59hkXY6g@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_192416_102151_32E28EAF 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> Perhaps a prettier way to do this is to push the handling of each
> efi_fake_mem entry into a subroutine. However, I notice when a memmap
> allocated by efi_memmap_alloc() is replaced by another dynamically
> allocated memmap the previous one isn't released. I have a series that
> fixes that up as well.

Yes, agreed, thanks for the fix:)


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

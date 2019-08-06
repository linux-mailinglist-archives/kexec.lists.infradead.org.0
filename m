Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790D0829C2
	for <lists+kexec@lfdr.de>; Tue,  6 Aug 2019 04:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJaXhi07DmAxLqtzyLXCwwWpyKW31aVDQP/HlFsUG3Y=; b=g0s7G/siHjhBm8
	RcibvdoyCzVCIFqnaw5YtDxfIurX7tprzoIjTmDS/rgAMJrlWs8Al1C0nQZfXZfwl/PkMWy5Oj9gR
	mgwcovfaD6ch4yidN73B7ANo87ZJA5xxWJCpaZSpVlYbaSthaI0UGNecx4SuyS16/bF7K9+lglhr6
	qYgj8y0fFbWcWPHWb2HW8+oBW+y6gdOrxPFq3RMfcrHT744kCFtbpIUC4nsOvo69MSRIECJTdvOyM
	3JylHz54O9tPB4k7+C4vWfBhPcnyskWim8mSb2AD8L6xcjvjT6WEn07bccJqkqH1kz9RaoWUankbq
	NA7vB0SOtbHdbAuaU+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupSZ-0004vK-Of; Tue, 06 Aug 2019 02:44:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupSW-0004v1-PR
 for kexec@lists.infradead.org; Tue, 06 Aug 2019 02:44:22 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 006523001AA4;
 Tue,  6 Aug 2019 02:44:20 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-88.pek2.redhat.com
 [10.72.12.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C5DC19C5B;
 Tue,  6 Aug 2019 02:44:17 +0000 (UTC)
Date: Tue, 6 Aug 2019 10:44:13 +0800
From: Dave Young <dyoung@redhat.com>
To: Matthew Garrett <mjg59@google.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
Message-ID: <20190806024413.GB6956@dhcp-128-65.nay.redhat.com>
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CACdnJusRUnhmOLdowqbGoM9Z-tWsKrhZ8sFfQUUmjyKmRVN+vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACdnJusRUnhmOLdowqbGoM9Z-tWsKrhZ8sFfQUUmjyKmRVN+vw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 06 Aug 2019 02:44:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_194420_877440_50200114 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bhsharma@redhat.com, linux-efi <linux-efi@vger.kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/05/19 at 10:09am, Matthew Garrett wrote:
> On Mon, Aug 5, 2019 at 1:36 AM Dave Young <dyoung@redhat.com> wrote:
> >
> > kexec reboot fails randomly in UEFI based kvm guest.  The firmware
> > just reset while calling efi_delete_dummy_variable();  Unfortunately
> > I don't know how to debug the firmware, it is also possible a potential
> > problem on real hardware as well although nobody reproduced it.
> >
> > The intention of efi_delete_dummy_variable is to trigger garbage collection
> > when entering virtual mode.  But SetVirtualAddressMap can only run once
> > for each physical reboot, thus kexec_enter_virtual_mode is not necessarily
> > a good place to clean dummy object.
> 
> I agree that this isn't necessarily the best place to do this in the
> kexec case, but given we control the firmware, figuring out what's
> actually breaking seems like a good plan.

I'm more than glad to get the root cause, if you can help on debugging I
would like to share the efi var file etc.

But it is indeed a problem cause weird reset on end user part, but even if we can
not find the root cause (in firmware..)  I think we still need avoid it
with such workaround.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

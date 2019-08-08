Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22585C01
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 09:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opDlrZZ4JS2qK6BOF4fYu2VciDO0CKBJrvAYKlUfUMY=; b=Dn2FxgYgL3g5+T
	Wt2tE5E0uzxNwe0iU1YT76UYQQVppPZDZKtNarSMGDC0P9wpRI+pVwIpVVRY9g2k9OCHcKjf4nuP6
	Cz1GS2G+c+dJQqSMbvWv9E4WmntujvQxtNn6l0kcPVlXrcZr/WgA5F3eaRzWG/2kIxyS+Fv0iGif9
	bfZh7cV95jE2UM61mFmpHd8GDZts42omIavOnYb79DZp1JfsjoE8RBkzRGvPO9AZ/vvDDsKmTvT2Z
	8plUqyEwIhJ/hF9r0ZHz24n5coEZ1yBfdribsM2W82C5mcFBVUupTwUPqw8899Tutbj3dltnKbiqd
	fpdi4swspUd5ujIVjdng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdAi-0000wt-Jz; Thu, 08 Aug 2019 07:49:16 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdAe-0000wP-01
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 07:49:13 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E4D0B30EA180;
 Thu,  8 Aug 2019 07:49:10 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-94.pek2.redhat.com
 [10.72.12.94])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 484B95D70D;
 Thu,  8 Aug 2019 07:49:08 +0000 (UTC)
Date: Thu, 8 Aug 2019 15:49:04 +0800
From: Dave Young <dyoung@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
Message-ID: <20190808074904.GA5300@dhcp-128-65.nay.redhat.com>
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 08 Aug 2019 07:49:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_004912_081720_A651946B 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Matthew Garrett <matthewgarrett@google.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linux-efi <linux-efi@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/05/19 at 06:55pm, Ard Biesheuvel wrote:
> On Mon, 5 Aug 2019 at 11:36, Dave Young <dyoung@redhat.com> wrote:
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
> >
> 
> I would argue that this means it is not a good place to *create* the
> dummy variable, and if we don't create it, we don't have to delete it
> either.
> 
> > Drop efi_delete_dummy_variable so that kexec reboot can work.
> >
> 
> Creating it and not deleting it is bad, so please try and see if we
> can omit the creation on this code path instead.
> 

Check the code for the dummy var, it is created only in below chunk:
arch/x86/platform/efi/quirks.c:
efi_query_variable_store():
[snip]
	/*
	 * We account for that by refusing the write if permitting it would
	 * reduce the available space to under 5KB. This figure was provided by
	 * Samsung, so should be safe.
	 */
	if ((remaining_size - size < EFI_MIN_RESERVE) &&
		!efi_no_storage_paranoia) {

		/*
		 * Triggering garbage collection may require that the firmware
		 * generate a real EFI_OUT_OF_RESOURCES error. We can force
		 * that by attempting to use more space than is available.
		 */
		unsigned long dummy_size = remaining_size + 1024;
		void *dummy = kzalloc(dummy_size, GFP_KERNEL);

		if (!dummy)
			return EFI_OUT_OF_RESOURCES;

		status = efi.set_variable((efi_char16_t *)efi_dummy_name,
					  &EFI_DUMMY_GUID,
					  EFI_VARIABLE_NON_VOLATILE |
					  EFI_VARIABLE_BOOTSERVICE_ACCESS |
					  EFI_VARIABLE_RUNTIME_ACCESS,
					  dummy_size, dummy);

		if (status == EFI_SUCCESS) {
			/*
			 * This should have failed, so if it didn't make sure
			 * that we delete it...
			 */
			efi_delete_dummy_variable();
		}

[snip]

So the dummy var only be created when the if condition matched, also
once creating succeeded it is deleted.  The deleting while entering
virtual mode is always deleting a non exist efi var.  Please correct me
if I miss something. 

If above is true, then at least in the kexec path can be dropped because
we have a real bug which resets machine.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

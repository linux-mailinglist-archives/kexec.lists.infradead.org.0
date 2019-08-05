Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CB88145D
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 10:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gxPfEX0oveL1wGdEw7GDEfw4fzF+JKNWV2VisNwvWXk=; b=pywK9inRIA5Efo
	+/JY7ujXG/vfY+9T4am3apdnykAxO9TH+k1uWvxNomKch1OFKVAy0BnHvspzSmW51WQgxSqhzT8F0
	KExKHhVKhinyMU+HPfs6LdmKgAwmpo5cn5JwDYqdo4E85Pie3FHcKkZSX5kpkRRrQQB3muI2hVntI
	gocsVlQTI/8TgKN/WQtMaTutBBtSMbevhXM7t7/JmdTftjvdnSc3rwjNok2Zjvr9xFw1XQVmfMWuQ
	PvjEB6mQFGhOltCghNpHetst1JHL9N+x28Tr7mwVe8J1NjhZQ4I46oFxRyeVS1VtxU97651MWUd9K
	zpBnvmY9Ypq86Uiz6+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYTQ-0008EN-DU; Mon, 05 Aug 2019 08:36:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYTJ-0008Dh-5g
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 08:36:02 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 44C19300BCE9;
 Mon,  5 Aug 2019 08:36:00 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-149.pek2.redhat.com
 [10.72.12.149])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8803E5C1A1;
 Mon,  5 Aug 2019 08:35:57 +0000 (UTC)
Date: Mon, 5 Aug 2019 16:35:53 +0800
From: Dave Young <dyoung@redhat.com>
To: linux-efi@vger.kernel.org, ard.biesheuvel@linaro.org
Subject: [PATCH] do not clean dummy variable in kexec path
Message-ID: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Mon, 05 Aug 2019 08:36:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_013601_227352_1D18B161 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: matthewgarrett@google.com, bhsharma@redhat.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

kexec reboot fails randomly in UEFI based kvm guest.  The firmware
just reset while calling efi_delete_dummy_variable();  Unfortunately
I don't know how to debug the firmware, it is also possible a potential
problem on real hardware as well although nobody reproduced it.

The intention of efi_delete_dummy_variable is to trigger garbage collection
when entering virtual mode.  But SetVirtualAddressMap can only run once
for each physical reboot, thus kexec_enter_virtual_mode is not necessarily
a good place to clean dummy object.

Drop efi_delete_dummy_variable so that kexec reboot can work.

Signed-off-by: Dave Young <dyoung@redhat.com>
---
 arch/x86/platform/efi/efi.c |    3 ---
 1 file changed, 3 deletions(-)

--- linux-x86.orig/arch/x86/platform/efi/efi.c
+++ linux-x86/arch/x86/platform/efi/efi.c
@@ -894,9 +894,6 @@ static void __init kexec_enter_virtual_m
 
 	if (efi_enabled(EFI_OLD_MEMMAP) && (__supported_pte_mask & _PAGE_NX))
 		runtime_code_page_mkexec();
-
-	/* clean DUMMY object */
-	efi_delete_dummy_variable();
 #endif
 }
 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

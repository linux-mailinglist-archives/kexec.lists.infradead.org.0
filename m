Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABF38B6F3
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 13:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61WzeCwK8Y9HtOc9pVjc7rcGs96LUuvjS+QnqRVqsvY=; b=pfcQ5BASHW7XrN
	XP3NysvAKx48UVD8vG30blqGsrK8xXIzz6YEnxP0KM+sTYrD66vodYo5uN99y3hdsSlvGcgGe0q6s
	1XHyPXzI+DHYwyGcN4Lg4yrpaHgxBW0gQvGllwIeWwkCkIIadUtHL0+DUMldmGVZ/H6CcnJNsTnPW
	es0yBb/LjOCVjyZCIrhgJImcP7Kewg9u0Lt+FwBeC2kk4amqCrqZDrl48DyEJXem0TxqQ3Q7w3ZBs
	NrzhGzQCuC3BjE/DHZbxJK8S15Q8CI68OEcKKCyQThhedmZkdgu+IZBknT1F8PNk/jh1p0ZvWNZDc
	5a5uWPzehJv+nji1cQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV2k-0006Ja-94; Tue, 13 Aug 2019 11:32:46 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxV1w-0005Xr-Pq
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 11:31:58 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5C295883BA;
 Tue, 13 Aug 2019 11:31:56 +0000 (UTC)
Received: from lacos-laptop-7.usersys.redhat.com (ovpn-117-193.ams2.redhat.com
 [10.36.117.193])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 707ED80FF7;
 Tue, 13 Aug 2019 11:31:52 +0000 (UTC)
Subject: Re: [PATCH] do not clean dummy variable in kexec path
From: Laszlo Ersek <lersek@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Young
 <dyoung@redhat.com>, Matthew Garrett <mjg59@google.com>
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
 <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
Message-ID: <6209b30e-e3c6-fd7f-4fe6-b6bed72ff041@redhat.com>
Date: Tue, 13 Aug 2019 13:31:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fbea659c-6e8f-b854-66d2-2c928d1d3783@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 13 Aug 2019 11:31:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_043156_892780_CC6D371D 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: kexec devel list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/13/19 13:28, Laszlo Ersek wrote:
> On 08/05/19 17:55, ard.biesheuvel at linaro.org (Ard Biesheuvel) wrote:

>> I would argue that this means it is not a good place to *create* the
>> dummy variable, and if we don't create it, we don't have to delete it
>> either.

> - Consider moving the cleanup even for cold boot to a different spot.
>   I'd argue for efi_query_variable_store() -- we should delete the dummy
>   variable there, *regardless* of whether we just created it, or it had
>   existed previously.

To clarify: I suggest deleting the dummy -- regardless of it
pre-existing, vs. us creating it on the spot -- *wherever* we create it
during cold boot.

I'm not arguing for efi_query_variable_store() per se. If there is a
better init / setup function, we should move both the creation and the
(independent!) removal there.

Thanks
Laszlo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

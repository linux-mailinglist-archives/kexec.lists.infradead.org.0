Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C02D1A777C
	for <lists+kexec@lfdr.de>; Tue, 14 Apr 2020 11:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W36OFaxv4HKBNnoLnD6OcctInkrAKi8dNuH7t5VITN8=; b=jSsGNzevOecvez
	Pn7PsvrA4ABUJMmhY7/9HNpRTvlNv/ieU9vf4QapfHU5hVFhdB9eTpIw+WUKInVzPjQ+o0iM5p7nw
	JVb53Fvt7xy7hUtutSqt8a570Q5v3OumWbd72/sizALoxrf5vMaKVmrRZInKToDpwWu1jk3Meu7mV
	o3B+8SPVvEV3ZFs+Nlmb48ywxmfPfmPiq+GjpnNtIsDfJhKSetQbB12+E8//revSKML+aGFDl5Ym9
	tBlH8FUl7f002t7ss5E5T905L9TvK6UmqgQrsEsd4Bsud+rcgpPLWFFYfs6aTz1IvJ6pmmacFLu46
	L74p3ZnDKPM3V+u8noaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOI1d-0002mf-Vw; Tue, 14 Apr 2020 09:38:37 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOI1S-0002bk-DQ
 for kexec@lists.infradead.org; Tue, 14 Apr 2020 09:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586857105;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lvhqC0dRP09rVWyXtfxcbLLHJ6kqkkrA4CUn4bAErBo=;
 b=E+GXXy1uGjK1SxBFGOK/VSg77kTKPaylSVSr32as7nR20UFtTacVq2IDVqF6oJXRocwUjo
 c40jETdTL5HZU/1FGpGTR71bij62mHZ1vhgE7STOhABh2pmjcfJB1cBBt+sW07aaQ1k6oq
 FhDjD6hkpBRQVD/5GDDhDczbNevipD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-No530O1hMaiQKW0OPwylRA-1; Tue, 14 Apr 2020 05:38:23 -0400
X-MC-Unique: No530O1hMaiQKW0OPwylRA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 957D98018A2;
 Tue, 14 Apr 2020 09:38:21 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-221.pek2.redhat.com
 [10.72.12.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7429210013A1;
 Tue, 14 Apr 2020 09:38:14 +0000 (UTC)
Date: Tue, 14 Apr 2020 17:38:09 +0800
From: Dave Young <dyoung@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200414093809.GA43901@dhcp-128-65.nay.redhat.com>
References: <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200414091617.GA43656@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200414091617.GA43656@dhcp-128-65.nay.redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_023826_524679_187F4019 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> We do not remove kexec_load at all, it is indeed helpful in many cases
> as all agreed.  But if we have a bug reported for both we may fix
> kexec_file_load first because it is usually easier, also do not need to
> worry about too much about old kernel and new kernel compatibility.
> 
> For example the recent breakage we found in efi path, kexec_file_load
> just work after the efi cleanup, but kexec_load depends on the ABI we
> added, so we must fix it as below:
> https://lore.kernel.org/linux-efi/20200410135644.GB6772@dhcp-128-65.nay.redhat.com/ 

Also, we have some specific sysfs files exported for kexec-tools use
/sys/firmware/efi/runtime-map/* and a few other table addresses:
fw_vendor  runtime and config_table under /sys/firmware/efi

That is only used by userspace kexec_tools for kexec_load, now the
runtime field is useless because of Ard's cleanup in efi code, but we
have to keep it there, older kexec-tools will need it.

In this case kexec_file_load do not need those hacks at all.  So in the
future if we have to invent some kernel/userspace abi only for
kexec_load we should be careful and maybe reject if no strong reason. 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

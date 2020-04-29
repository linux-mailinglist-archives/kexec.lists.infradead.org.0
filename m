Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BB11BD84C
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 11:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8Dg3Qwka3XIHgXr1Y6Tto1zKx+ljC0KwSYtzi64k/I=; b=BNZYMuF00vctbg
	ZleyOSNrZQtSiwLL7OC5aKh4kE/URQ/YlxsWfj759/A246nC3O6DUP1PYgcOqOLrMyQnVJqTt4pze
	eEWIz2TgXGPxLSt73YN6tK7i6O9XNUvDIHhAQXKxEoZgD5EhaqD49mLJWGXI8CBc3+Gd+ka66qbHY
	+h6FRfRVTjQ6GxSqtQ2lK3piML4J4VlYtv8VcoLxpEZO4LCTb1crlSPWfOBkE+rSfNfOBuYPSwx/w
	dgv/VivFIEsClDW9s1Yqu5kt2Zxo8Gw7lCagQisXMOtqdRQqWAsMCnHmgNG5CMMb4mhFnBXKkkVp2
	ZzqjtrgQ4RPO1X7XzEuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTj52-0003pw-G9; Wed, 29 Apr 2020 09:32:36 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTj4w-0003pF-2W
 for kexec@lists.infradead.org; Wed, 29 Apr 2020 09:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588152747;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=39cDDpNUVz/5Cj00Bg/zrH64BoKQ6ZFobBf3Owuvwqs=;
 b=N5vJGRFHgVxXjRvm9PXA94n0FhzMOWaS85BA5KSRKOaUbUDDQT9GGTvDLNb6n/5w5coq59
 B5sjoZ7a7X+M3jObZaUyV+R9i7AzdQwIXqhmM3P3yyhV2J4XzYOlT0vhezyhLkCI264FKj
 9Ij8Ml/tdPcIpyL0oJmFgKXEtWha7aM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-191-OBJ0AkYlNuO9b6-HslmwAg-1; Wed, 29 Apr 2020 05:32:20 -0400
X-MC-Unique: OBJ0AkYlNuO9b6-HslmwAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48ED0100A8F2;
 Wed, 29 Apr 2020 09:32:19 +0000 (UTC)
Received: from [10.72.8.17] (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5756526572;
 Wed, 29 Apr 2020 09:32:14 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: cope with not-present mem section
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>,
 =?UTF-8?B?SEFHSU8gS0FaVUhJVE8o6JCp5bC+44CA5LiA5LuBKQ==?= <k-hagio-ab@nec.com>
References: <1579487124-28426-1-git-send-email-piliu@redhat.com>
 <2AA47CAB-ED13-4A0A-9288-063832158203@redhat.com>
 <20200120085919.GB16539@MiWiFi-R3L-srv>
 <44958c3d-c861-8eb0-5713-50c36c7cfc6e@redhat.com>
 <TY2PR01MB5210FAB04501E6C59AAB2B06DD0F0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200127170447.GA4080@calabresa> <20200127180627.GB4080@calabresa>
 <TY2PR01MB521005B2E72D78C4561C0562DD0A0@TY2PR01MB5210.jpnprd01.prod.outlook.com>
 <20200128193302.GC4080@calabresa>
From: piliu <piliu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <769ddb8a-c845-04a6-0064-d674bbd04ae3@redhat.com>
Date: Wed, 29 Apr 2020 17:32:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200128193302.GC4080@calabresa>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_023230_192787_AB24A2C3 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Michal Hocko <mhocko@kernel.org>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kazu and Cascardo,

I encounter a weird problem when running makedumpfile on a s390 machine.

Our production kernel uses extreme sparse memory model, and has the
following:

in mm/sparse.c

#ifdef CONFIG_SPARSEMEM_EXTREME
struct mem_section **mem_section;
#else
struct mem_section mem_section[NR_SECTION_ROOTS][SECTIONS_PER_ROOT]
        ____cacheline_internodealigned_in_smp;
#endif

So in makedumpfile.c, get_mem_section(), it got a failed result when the
first call site to validate_mem_section(), then it should success at the
second call site to validate_mem_section(), which is inside if
(is_sparsemem_extreme()) condition.

But the actual result is not like expected.

After introducing
commit e113f1c974c820f9633dc0073eda525d7575f365    [PATCH] cope with
not-present mem section

I got two successful calls to validate_mem_section(), and finally failed
at the condition
		ret = symbol_valid ^ pointer_valid;
		if (!ret) {
			ERRMSG("Could not validate mem_section.\n");
		}


Do you have any idea?

Thanks,
Pingfan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

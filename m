Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF451EBAA7
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 13:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwfefYz8LeewDQdh5YVb5Qht+2kkodDcH8iqw5Omz/E=; b=OqDGbxwBrsWYjW
	extsoEQKrbU+bLW0v+WBXfRcMgeaL5dXhpgHMBg3GqlrqnQDtSis/Gefwk136eAFQlMjIzALNbdfl
	swk0DdJcCLD2/0wH/8Ak7iezOzvRjF+K/+49+uQkyY6bcxIo+bd7uB5Qu0UqvQ8aFfNKbkUiyMd5t
	66FIJSzfiF2I2Sk5vVKmE2lNTH3ATbGW79tolxnpqd4k9sKyEjJo+H67c8XAx2s+L66VFYgZvpZ7D
	BKUBHbXe5x5iO7U2bRF+P/XjZeN03LJKFEwMhdRSGpD5JX10Ydthq/4pJKBZZXUs83PxbxIW2YWE+
	iLY1qqb94CkWUO+7wKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5Mk-0002Gw-C5; Tue, 02 Jun 2020 11:45:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5Mh-0002GF-Co
 for kexec@lists.infradead.org; Tue, 02 Jun 2020 11:45:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 075C3AD72;
 Tue,  2 Jun 2020 11:45:54 +0000 (UTC)
Date: Tue, 2 Jun 2020 13:45:48 +0200
From: Jiri Bohac <jbohac@suse.cz>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH v2] kexec: Do not verify the signature without the
 lockdown or mandatory signature
Message-ID: <20200602114548.2yevcdfsho4it75u@dwarf.suse.cz>
References: <20200602045952.27487-1-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602045952.27487-1-lijiang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_044555_576710_BCFD9AF6 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bhe@redhat.com, kexec@lists.infradead.org, jmorris@namei.org,
 mjg59@google.com, linux-kernel@vger.kernel.org, ebiederm@xmission.com,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 12:59:52PM +0800, Lianbo Jiang wrote:
> So, here, let's simplify the logic to improve code readability. If the
> KEXEC_SIG_FORCE enabled or kexec lockdown enabled, signature verification
> is mandated. Otherwise, we lift the bar for any kernel image.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>

Reviewed-by: Jiri Bohac <jbohac@suse.cz>

-- 
Jiri Bohac <jbohac@suse.cz>
SUSE Labs, Prague, Czechia


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BA9AE659
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 11:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GegYi+0vui4FSjc+/JfYD5wXBsyokc98dgUsSAcJD0k=; b=h5mkuZIWYyU32b
	8D6HqDKxGiI+/1ecK9F03qO6XDCzYJsVW6Uaz1RVHUUlIqNWGMm7OVkLtazLUMP5UmsXCODGDbVft
	pzyNsW54llubZ+1Y6lEvAyjHpAm5kTpATMLrPAoew+GFHyCgBFcDk/BvOfouSar1YoNWLW1B8MQO7
	Sos4VsZvlKGp4AV/xgZLDkn0e9nnOSl6YVn9p7y11e0hgzS30i1/NsvQuwBYj86fWf8cV2IJl8VVE
	v1Ecv8BmWhN4DCPJMtapm39dFbLUXa2oPMef2jjnwVTMeRQ8yIpfnm6tLBY8QJzxu7FindEOfWUyD
	tKJ+AT3TZpw+KOcVaMag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cAq-0005YX-HU; Tue, 10 Sep 2019 09:10:56 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cAa-0005NM-3e
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 09:10:41 +0000
Received: by mail-ed1-x542.google.com with SMTP id i8so16285650edn.13
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 02:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iez8yZGFDi4oceFiuNT2xGD/UPWI8Mn1wAE4EZBiLGs=;
 b=TR8pm1x+5+93McH11wJzi98SRcpwX5O2y8OG42hvagT/7UHiVtW74HMGcwPXJf0w7w
 Cn/lBBy9lD0+a7/880e7d1bukGpYVoiffeuNMtO4uCUjgsaO1QDM5OXZ7vAjJXCmCZBf
 0C3LJWyRj++f193R8TKq7WnBTx9mP7PZ+ipVafA1tfCFnGBYz11HYgU5XTuffl9M0q77
 37d590kwYGCiNDXpAWRB06js2XfjxPKlJVcbyLIzRqjFCoI3DPkk3fEGVoCsNMEuxt+m
 vPhmqXKJXvkOAhLiQdPlCSlO3p1Z1SWiiL8Xcy+XjoSFfzFlXHja1JiLUV61MJ33GZkW
 hqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iez8yZGFDi4oceFiuNT2xGD/UPWI8Mn1wAE4EZBiLGs=;
 b=cP+ljBk0fkft0PJNmwQBKnZUBSW89rZ/8g6WTEoIlKZGy6FY/mVdNHwwsgTw7DJ2jT
 NqVy+n09bb8QHIsgFLAqNmsCNMxWmHgojSnwkhG8Gs8JFZpU1lZPvqlGVPMK46U9TqYj
 xdeR8BLPwXbf8BGgSLbZzaqddZ9l9JIxTY/v9fRhOEqzhf1eHMTPucUz2dzdOSKuQndB
 SWl7de85k0e8M+8p7VIh8tT5zE3NCUAzQqxxbf6h3xyDO/yFF1kgZqEk036E5BolMv5v
 x6qcwN5E17AQPnnUM8zUVh2uU199wJtgEKIa849oBmPNsvhzgOsnSNEUBu01CwEbd5sP
 abPw==
X-Gm-Message-State: APjAAAWR+FLfItZo038lSEDGc0FJTAp98/MGzo4fFQYB49cGb7cD9Cdu
 S3YrwxXCMycE2df7mDRjaiLwJ0D3xObd+BIkUAyRaQ==
X-Google-Smtp-Source: APXvYqw+MTXYLCZAfKQw+KljBbFHBLzEFXSK8JFfP6Xtr05eeItHAJhmdBtQMKUlIJDozLSmFBiEb9Xc0kOqfyUvFTE=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr28774906edv.124.1568106637988; 
 Tue, 10 Sep 2019 02:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-5-pasha.tatashin@soleen.com>
 <e2ceb43a-d7bf-e0c6-c3ea-b83c95ba880d@suse.com>
In-Reply-To: <e2ceb43a-d7bf-e0c6-c3ea-b83c95ba880d@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:10:26 +0100
Message-ID: <CA+CK2bAsW0ExS2a2ZaGUmF2igKE7TM0qdCSYMaJn=0+pkM7ugQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] arm64: hibernate: use get_safe_page directly
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_021040_566759_490E40B2 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> On 09/09/2019 20:12, Pavel Tatashin wrote:
> > create_safe_exec_page() uses hibernate's allocator to create a set of page
> > table to map a single page that will contain the relocation code.
> >
> > Remove the allocator related arguments, and use get_safe_page directly, as
> > it is done in other local functions in this file to simplify function
> > prototype.
> >
> > Removing this function pointer makes it easier to refactor the code later.
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
>
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>
>

Thank you

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec

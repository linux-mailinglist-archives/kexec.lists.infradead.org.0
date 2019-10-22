Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CD5DFEC0
	for <lists+kexec@lfdr.de>; Tue, 22 Oct 2019 09:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1agac5f4mEVKU9vtcu+wHoZHIWw79GtrR2jHo5gIkE=; b=Dc+o6e5oieUU+D
	BxIFohUknxxWNZaZVwV0dtloLN0q4CusA0u3XZvFFLkZU3oPUnDu5QtDoKqUGleNlGDI4trKWAJJJ
	YEYciDk25M7Q2pp/M44DWKy/BkqLmzDTdCSqDke7AIudTuFD7DTGHJSkscgOt+5XvVt5UDXfdto7g
	HEJvcDstaIZ4x5jZdH5Hr4/EPf8nMN0Sp+e9z+DAhIMk0OPfHgp0hBoyk4kaUu2aVpSsBbGFqGjLi
	cEHjiQanob3tx0wXBc6uIvXZhAmyrqs8v6zL0ByNvUQRnGiXqBtYPfyJtNztUBJ69K+qDpd64nD4X
	1r4OaeVjJLXVwbT9PW5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMoyn-000898-M0; Tue, 22 Oct 2019 07:53:21 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoyh-00085f-Aw
 for kexec@lists.infradead.org; Tue, 22 Oct 2019 07:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571730793;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QC2pHDRGNysneo8KOzbWEe82JdszmGoLpSSC/zl3Yfc=;
 b=TrbmrwPLdzCVR7JT9UTKRAwseounxItWLzmvQ2U0xNurwWvQMNAbeaJrsIFFTWNPxaJgzb
 2Idzp8jh5wQERFGNvWeMt9VlY3YSCo+tA3VZQtA3B1E8IymmwwRPTGv6wMPmbq2L4M6/2o
 o8OaLbOV/8mB6tFrsLVM4pJB1lzeIX8=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-JNCCevgUP4-FPS6Y2DXHRQ-1; Tue, 22 Oct 2019 03:53:11 -0400
Received: by mail-lf1-f71.google.com with SMTP id o9so3263827lfd.7
 for <kexec@lists.infradead.org>; Tue, 22 Oct 2019 00:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QC2pHDRGNysneo8KOzbWEe82JdszmGoLpSSC/zl3Yfc=;
 b=et4/wXrQtcV+lKtzTBOr+VV67tbKU4XQ5lJFS/I0N5op9nJPCV8k6OYwqdJ0jl1nWk
 UyfFuP9HZtbCpB+Np/aFBT0uFSvAJIl5JKgPk271DN7SEAbs4/uGAgcYFtAvXItrYKDg
 wsOXZEp+zaGgAZRmDsS/Fk/KeZwI/l9UTo53gQyK+XG+SDEhyC3YxhglEaGM8DBTMssU
 /acIqRcNj+8ZbPe7dn8irILnIMGpyKvrkqcnjN7BhaSzkoP510qlClS51fpzBMhvqpnc
 he90X03iwxHUGVIhTpmbuE6ls8/p1Gqryx0+x31YtIP57a2XOIMBj2jGoB5wNN/R6pZ8
 lXjQ==
X-Gm-Message-State: APjAAAWbvUndc4luHpxMpNkTbESXhusWlgkRf4wJZ543Akc78MsQA2hV
 TTrl/oNx+Wr2Z3hQKoU0XjYACIcRc6KAtlAiI3pl9tfUcxncZNMSFbk9dVzmGxhUAih+QhtdaoK
 f2e8UfLQkQx3/6gn1Y2iO7MzrKVcKVRBmgxdi
X-Received: by 2002:ac2:4acb:: with SMTP id m11mr13526498lfp.9.1571730789813; 
 Tue, 22 Oct 2019 00:53:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2jT4mw5YRHbTqIMe86S/1N7hnGN0BKa1jLw5BI3X8HVO0E4DGlAGEeCnaYNlgTpe26dEn1n4EiD2PZ8Z1rH0=
X-Received: by 2002:ac2:4acb:: with SMTP id m11mr13526480lfp.9.1571730789565; 
 Tue, 22 Oct 2019 00:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <1C379272-3B10-432C-8A83-8F3008CEE87F@oracle.com>
 <CACi5LpM9eN7XuFRi-BapvGNSfu8GgDPTi0BRG9WT4E_nJkzwfw@mail.gmail.com>
 <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
In-Reply-To: <B641BD39-6FA8-4382-AA04-D83CDCF5D278@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 22 Oct 2019 13:22:56 +0530
Message-ID: <CACi5LpPRFi4BoyDp4dBDROJ48r6oZnenTJ_CE=MMefYnVnZ0ZA@mail.gmail.com>
Subject: Re: Makedumpfile help for 5.4.0.rc3 : Arm
To: John Donnelly <john.p.donnelly@oracle.com>
X-MC-Unique: JNCCevgUP4-FPS6Y2DXHRQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_005315_482116_64726749 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgSm9obiwKCk9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0IDEyOjQ3IEFNIEpvaG4gRG9ubmVsbHkK
PGpvaG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPgo+IEhpIEJodXBlc2gKPgo+ID4g
T24gT2N0IDIxLCAyMDE5LCBhdCAxOjUzIFBNLCBCaHVwZXNoIFNoYXJtYSA8YmhzaGFybWFAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGVsbG8gSm9obiwKPiA+Cj4gPiBPbiBNb24sIE9jdCAy
MSwgMjAxOSBhdCA5OjM5IFBNIEpvaG4gRG9ubmVsbHkKPiA+IDxqb2huLnAuZG9ubmVsbHlAb3Jh
Y2xlLmNvbT4gd3JvdGU6Cj4gPj4KPiA+Pgo+ID4+Cj4gPj4gSGVsbG8sCj4gPj4KPiA+Pgo+ID4+
IEthenVoaXRvIEhhZ2lvIGFza2VkIG1lIHRvIHNoYXJlIG15IHRlc3QgcmVzdWx0cyBvbiB0aGlz
IHBhdGNoIGZvciBtYWtlZHVtcGZpbGUgOgo+ID4+Cj4gPj4KPiA+PiBodHRwczovL3VybGRlZmVu
c2UucHJvb2Zwb2ludC5jb20vdjIvdXJsP3U9aHR0cHMtM0FfX3NvdXJjZWZvcmdlLm5ldF9wX21h
a2VkdW1wZmlsZV9jb2RlX2NpXzdiZGI0NjhjMmM5OWRkNzgwYzlhNTMyMWY5M2M3OWNiZmRjZTI1
MjdfJmQ9RHdJQ0FnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0pu
RSZyPXQyZlBnOUQ4N0Y3RDhqbTBfM0NHOXlvaUlLZFJnNHFjX3RoQnc0YnpNaGMmbT1Va0xxOXJw
UkNEajdEcUthLTVkVmx2Uzd5TVp4Qjdqdk5kOWFHdXR2RXUwJnM9ZDlUTG1PUFZPNFBGdHZjRndW
T2VaUmNNZzBVT215MDRYZGd6dFZ4WFd5ZyZlPQo+ID4+Cj4gPj4gQW5kIEkgd2FzIHN1Y2Nlc3Nm
dWxseSBhYmxlIHRvIGdldCB2bWNvcmUgZHVtcHMgb24gdm1saW51ei01LjMuNiBhbmQgNS40LjAt
cmMzIEludGVsICggeDg2LTY0KSBrZXJuZWxzLgo+ID4+Cj4gPj4gSSBhbSBzdGlsbCBoYXZpbmcg
ZGlmZmljdWx0aWVzIGdldHRpbmcgdm1jb3JlcyBvbiA1LjQuMC5yYzMgICBBcm0ga2VybmVscyB3
aXRoIHRoaXMgdXBkYXRlIHRvIG1ha2VkdW1wZmlsZS4KPiA+Pgo+ID4+IEkgZ2V0IHRoaXMgbWVz
c2FnZTsKPiA+Pgo+ID4+Cj4gPj4gQnVmZmVyIHNpemUgZm9yIHRoZSBjeWNsaWMgbW9kZTogMzE0
NTcyOAo+ID4+IHZhX2JpdHMgICAgICA6IDQ3Cj4gPj4gcGFnZV9vZmZzZXQgIDogZmZmZmMwMDAw
MDAwMDAwMAo+ID4+IGNhbGN1bGF0ZV9wbGF0X2NvbmZpZzogUEFHRSBTSVpFIDB4MTAwMDAgYW5k
IFZBIEJpdHMgNDcgbm90IHN1cHBvcnRlZAo+ID4+IGdldF9tYWNoZGVwX2luZm9fYXJtNjQ6IENh
bid0IGRldGVybWluZSBwbGF0Zm9ybSBjb25maWcgdmFsdWVzCj4gPj4KPiA+PiBtYWtlZHVtcGZp
bGUgRmFpbGVkLgo+ID4+Cj4gPj4KPiA+PiBBbnkgc3VnZ2VzdGlvbnMgd2VsY29tZWQKPiA+Cj4g
PiBJIGFtIHdvcmtpbmcgb24gdGhlIGNoYW5nZXMgaW4gdGhlIHZtY29yZWluZm8gYWZ0ZXIgdGhl
IDUyLWJpdCBWQQo+ID4gY2hhbmdlcyBmcm9tIFN0ZXZlIHdlcmUgYWNjZXB0ZWQgaW4gTGludXgg
NS40LXJjMSAoIlN1cHBvcnQgZm9yIDUyLWJpdAo+ID4gdmlydHVhbCBhZGRyZXNzaW5nIGluIGtl
cm5lbCBzcGFjZeKAnSkuCj4KPgo+ICAgIEkgZG9u4oCZdCBzZWUgYSBjb21taXQgd2l0aCB0aGlz
IHRpdGxlIGluIGxpbnV4LXN0YWJsZSAgOyAgQ291bGQgeW91IGJlIGEgbGl0dGxlIG1vcmUgc3Bl
Y2lmaWMgd2hhdCBmaWxlICB0aGF0IHdhcyBhcHBsaWVkIHRvID8KCllvdSBjYW4gaGF2ZSBhIGxv
b2sgYXQgdGhlIGZvbGxvd2luZyBjb21taXQgKGFuZCBkZXBlbmRlbmNpZXMpIGluCkxpbnVzJ3Mg
dHJlZSAoZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdCkKd2hpY2ggaW50cm9kdWNlZCA1Mi1iaXQga2VybmVsIFZBcyBmb3IgYXJt
NjQgYXJjaGl0ZWN0dXJlOgoKY29tbWl0IGI2ZDAwZDQ3ZTgxYTQ5ZjZjZjQ2MjUxOGMxMDQwOGYz
N2EzZTY3ODUKQXV0aG9yOiBTdGV2ZSBDYXBwZXIgPHN0ZXZlLmNhcHBlckBhcm0uY29tPgpEYXRl
OiAgIFdlZCBBdWcgNyAxNjo1NToyMiAyMDE5ICswMTAwCgogICAgYXJtNjQ6IG1tOiBJbnRyb2R1
Y2UgNTItYml0IEtlcm5lbCBWQXMKClRoYW5rcywKQmh1cGVzaAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8va2V4ZWMK

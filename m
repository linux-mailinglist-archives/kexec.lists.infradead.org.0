Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DC69670D
	for <lists+kexec@lfdr.de>; Tue, 20 Aug 2019 19:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j5Ss6sg0ADQJ/wz0oOYbv+xqom1ZhtQuwDIGLMzeKkw=; b=NtO
	I+V6TpXobznXvbk7as8EUygLJAbqFXgPZyk409C7e0YZT2RU9BQwC1b30TxwoQdJAVpkoP5NjGQXG
	D3KPK0dy0ro5NK46W7nWJlotgJwtnegswhwjpiFuh5nquK3fgEOXPALwK0itWB/8trica/meUtsNQ
	BHR7JnTGzqErqZMUIW2KDBuHZ5uKl5Ypf7XG0uVwZ+VEDbeNz6blvUDgU4GHSBjQC70qRYaa9qZPs
	BphjfjEewxM8x/k2zdBG+0uvccYsJHRd/Tc/3fQhusACbcrzOevNFrC2u5wa5KQDe6b0O/aFA/HO7
	FvRALv+OgB6c1Mx/GB2KSPg/rSusNeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07aR-0004sl-2C; Tue, 20 Aug 2019 17:06:23 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07aM-0004sM-Jp
 for kexec@lists.infradead.org; Tue, 20 Aug 2019 17:06:20 +0000
Received: by mail-vs1-xe41.google.com with SMTP id q188so4030298vsa.4
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 10:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=eJVlN4D9NwJN/iCLLq/8eFa/Tls5XL+O4KlC1A+rm5o=;
 b=C9lD0mAoNY4V/7/rR5UEnpzjpK+6n4lZ7YrTTmlpEGNebNmx12BIUR6fdf5iVnGmvX
 NPoYYqUAcgNusHCSY3YHH2W+BcfIeeMFdmR/tE31/kk7OtEbiTUrUCWqHkYsfxHJVvM8
 GR0L5j26vUDAauCnSp6Lj6UxGjxJGNDNyjhtIEPRN0D2CUL2HlwJykzTjYgXU3IobCYj
 7uR29TgldAbiXnDD7j1FfOAVq0OeB2/B/0JUgANDs4BxGiQkgTCBfBvpFB8YPzeUbyb5
 FPPmiQPVneyZOPesbNmgYxXAWzYnFzKwdNooBmMdiS9+V6AqGnbbRdYIrm3RxosEOPG8
 8kDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=eJVlN4D9NwJN/iCLLq/8eFa/Tls5XL+O4KlC1A+rm5o=;
 b=gljp2tJYPQPMKqk1dhiIhXY/H2DGEcu46m4YxFWUjB+t31FBeJyx3jVX5GJ5kBhdpw
 yS2s9MX5zlF6LiObXmISWD2dGefik5md8Mj/Odqnx/SbSTuJmXq+Vwp50Pteln5Qwug3
 QUx4g7ZCw/D9YVPVJjJSHsqE0FuTVVacKJlmCU1jtsvw+j4vSztmy3SVP/F/HBkDsN5V
 CMabgUBUPfMarAB/4YbGMkvPsR76fFNGpGMUAqGVwIRI90sHZEnkoDiOzkLxqQTFQwEM
 8eCyfiyHP0Z9czvt0kxrDrRmrn6NC1HrVp7ag3PB/x2sqXLe3pEq4DkwyLwqQziWcXqP
 8mcQ==
X-Gm-Message-State: APjAAAVcTahEamfa3g8GwDWMk5LrrmV+PBBNns16qRieN4I/p7TSC6W8
 kfPHIpV179Y/zNIaqmuftSVCXkRm88FGz4Wy9oSfelNY
X-Google-Smtp-Source: APXvYqwRjaGYHYUrPFqpf3fqsS+SdDkXO4XuMAqPJgMo8VOSERvcJanA5vhh0AjWeP9Dpuj3XdXImDQU6Q6vvFRA9p8=
X-Received: by 2002:a67:f44a:: with SMTP id r10mr17151690vsn.212.1566320774935; 
 Tue, 20 Aug 2019 10:06:14 -0700 (PDT)
MIME-Version: 1.0
From: Aggelis Aggelis <aggelis@gmail.com>
Date: Tue, 20 Aug 2019 20:06:03 +0300
Message-ID: <CAKUkA506XrKTeZ2LOcwctvUUFBB+ZUDcAaw1=K8z+KyfGntbeg@mail.gmail.com>
Subject: kexec broken on arm (v7) socfpga in later 4 series kernels ?
To: kexec@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_100618_681162_250A21E9 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aggelis[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SSB1c2UgTWl0eVNPTS01Q1NYIGRldiBraXQgKGFsdGVyYSBjeWNsb25lIHYgc29jZnBnYSkgZnJv
bSBDcml0aWNhbCBMaW5rCmFuZCBpIHdvdWxkIGxpa2UgdG8gYm9vdCB0byBhIGRpZmZlcmVudCBr
ZXJuZWwgdXNpbmcga2V4ZWMuCgpJbiBteSBjb25maWd1cmF0aW9uOgoKS0VSTkVMIDogaHR0cHM6
Ly9naXRodWIuY29tL2FsdGVyYS1vcGVuc291cmNlL2xpbnV4LXNvY2ZwZ2EvYXJjaGl2ZS9zb2Nm
cGdhLTQuOS43Ni1sdHNpLXJ0LnppcApDT01QSUxFUiA6IGh0dHBzOi8vcmVsZWFzZXMubGluYXJv
Lm9yZy9hcmNoaXZlLzE0LjA0L2NvbXBvbmVudHMvdG9vbGNoYWluL2JpbmFyaWVzL2djYy1saW5h
cm8tYXJtLWxpbnV4LWdudWVhYmloZi00LjgtMjAxNC4wNF9saW51eC50YXIuYnoyCgpJbiB0aGUg
a2VybmVsIGNvbmZpZ3VyYXRpb24ga2V4ZWMgaXMgZW5hYmxlZAoKemNhdCAvcHJvYy9jb25maWcu
Z3ogfGdyZXAgS0VYRUMKQ09ORklHX0tFWEVDX0NPUkU9eQpDT05GSUdfS0VYRUM9eQoKCmFuZCB0
aGUgZGVmYXVsdCBrZXJuZWwgY21kbGluZSBpcwoKIyBjYXQgL3Byb2MvY21kbGluZQpyb290PS9k
ZXYvbW1jYmxrMHAzIHJvb3R3YWl0IHJ3IGVhcmx5Y29uCgprZXhlYyB0b29scyB2ZXJzaW9uICBp
cwoKIy4va2V4ZWMgLS12ZXJzaW9uCmtleGVjLXRvb2xzIDIuMC4xOQoKCgoidWJvb3Qga2VybmVs
IiBhbmQgJ2tleGVjIGtlcm5lbCcgYXJlIHRoZSBzYW1lIHZlcnNpb24KKHNvY2ZwZ2EtNC45Ljc2
LWx0c2ktcnQpLiBUaGUgImtleGVjIGtlcm5lbCIgaGFzIGp1c3QgbW9yZSBtb2R1bGVzCmVuYWJs
ZWQgY29tcGFyZWQgdG8gdGhlIGRlZmF1bHQgInVib290IGtlcm5lbCIKCkZpcnN0ICB0aGUga2Vy
bmVsIGlzIGxvYWRlZCAgd2l0aCBrZXhlYyB0b29scwoKIy4va2V4ZWMgLWQgIC1jIC1sIHpJbWFn
ZWJreAotLWR0Yj1zb2NmcGdhX2N5Y2xvbmU1X21pdHlzb201Y3N4X2RldmtpdC5kdGIKLS1jb21t
YW5kLWxpbmU9InJvb3Q9L2Rldi9tbWNibGswcDMgcm9vdHdhaXQgcncgZWFybHljb24iCnN5c2Nh
bGwga2V4ZWNfZmlsZV9sb2FkIG5vdCBhdmFpbGFibGUuCmtlcm5lbDogMHhiNmFiMTAwOCBrZXJu
ZWxfc2l6ZTogMHg0YTU1YzgKTUVNT1JZIFJBTkdFUwowMDAwMDAwMDAwMDAwMDAwLTAwMDAwMDAw
M2ZmZmZmZmYgKDApCnpJbWFnZSBoZWFkZXI6IDB4MDE2ZjI4MTggMHgwMDAwMDAwMCAweDAwNGE1
NWM4CnpJbWFnZSBzaXplIDB4NGE1NWM4LCBmaWxlIHNpemUgMHg0YTU1YzgKekltYWdlIHJlcXVp
cmVzIDB4MDA0YjY1YzggYnl0ZXMKS2VybmVsOiBhZGRyZXNzPTB4MDAwMDgwMDAgc2l6ZT0weDAx
NzhmY2U4CkRUICAgIDogYWRkcmVzcz0weDAxNzk5MDAwIHNpemU9MHgwMDAwN2QwMAprZXhlY19s
b2FkOiBlbnRyeSA9IDB4ODAwMCBmbGFncyA9IDB4MjgwMDAwCm5yX3NlZ21lbnRzID0gMgpzZWdt
ZW50WzBdLmJ1ZiAgID0gMHhiNmFiMTAwOApzZWdtZW50WzBdLmJ1ZnN6ID0gMHg0YTU1Y2MKc2Vn
bWVudFswXS5tZW0gICA9IDB4ODAwMApzZWdtZW50WzBdLm1lbXN6ID0gMHg0YTYwMDAKc2VnbWVu
dFsxXS5idWYgICA9IDB4OGU2MzAKc2VnbWVudFsxXS5idWZzeiA9IDB4N2QwMApzZWdtZW50WzFd
Lm1lbSAgID0gMHgxNzk5MDAwCnNlZ21lbnRbMV0ubWVtc3ogPSAweDgwMDAKCmFuZCB0aGVuIHRy
eSB0byBzdGFydCB0aGUgbmV3IG5ldyBrZXJuZWwKIyBrZXhlYyAtZCAtZQpbIDEyNy45MjI4Mjld
IGtleGVjX2NvcmU6IFN0YXJ0aW5nIG5ldyBrZXJuZWwKWyAxMjcuOTI3MDI0XSBEaXNhYmxpbmcg
bm9uLWJvb3QgQ1BVcyAuLi4KWyAxMjcuOTc2Mjc3XSBDUFUxOiBzaHV0ZG93bgpbIDEyNy45Nzk4
OTldIEJ5ZSEKCmJ1dCAgdGhlbiBub3RoaW5nIGhhcHBlbnMgYW5kIG5vIG1lc3NhZ2VzIG9uIGNv
bnNvbGUuCgpBZnRlciBlbmFibGluZyDigJxLZXJuZWwgSGFja2luZ+KAnSAtPiAiS2VybmVsIGxv
dy1sZXZlbCBkZWJ1Z2dpbmcgZnVuY3Rpb25zICIKCnRoZSBrZXhlYydkIHpJbWFnZWJreCBrZXJu
ZWwgZ2l2ZXMgdGhlIGZvbGxvd2luZyByZXN1bHQKCmtleGVjIC1kIC1lClsgIDEzNC4xMTA4NTVd
IGtleGVjX2NvcmU6IFN0YXJ0aW5nIG5ldyBrZXJuZWwKWyAgMTM0LjExNTA2NF0gRGlzYWJsaW5n
IG5vbi1ib290IENQVXMgLi4uClsgIDEzNC4xNzY5NjFdIENQVTE6IHNodXRkb3duClsgIDEzNC4x
ODA2MjRdIEJ5ZSEKVW5jb21wcmVzc2luZyBMaW51eC4uLiBkb25lLCBib290aW5nIHRoZSBrZXJu
ZWwuCgoKYW5kIHRoZW4gbm90aGluZyAuIEF0IGxlYXN0IHRoZSDigJxVbmNvbXByZXNzaW5nIExp
bnV44oCmIGRvbmUsIGJvb3RpbmcKdGhlIGtlcm5lbC7igJ0gbWVzc2FnZSBtZWFucyB0aGF0IHRo
ZSBrZXhlYydkIGtlcm5lbCBzdGFydHMgdG8gZXhlY3V0ZQphbmQgcmVhY2hlcyBhdCBsZWFzdCBh
dCBsaW5lIDU0NiBvZiDigJwvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2hlYWQuU+KAnQpmaWxl
IGV4ZWN1dGluZyB0aGUgZm9sbG93aW5nIGluc3RydWN0aW9uOgoKYmwgZGVjb21wcmVzc19rZXJu
ZWwuCgoKQWNjb3JkaW5nIHRvIHRoaXMgcGF0Y2ggaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wYXRjaC82NTA0MzIxLwprZXhlYyBpcyBzdXBwb3J0ZWQgb24gc29jZnBnYS4KCkRvd25sb2Fk
aW5nIGFuIG9sZGVyIHNlcmllcyBrZXJuZWwgZm9yIHNvY2ZwZ2EgKDQuMS4yMikKCmZyb20gKGh0
dHBzOi8vZ2l0aHViLmNvbS9kbGF1dC9saW51eC1zb2NmcGdhICwgIHVuZm9ydHVuYXRlbGx5IG9s
ZGVyCnNlcmllcyBrZXJuZWxzIGFyZSBub3QgYXZhaWxhYmxlIGZyb20gb2ZmaWNpYWwKaHR0cHM6
Ly9naXRodWIuY29tL2FsdGVyYS1vcGVuc291cmNlL2xpbnV4LXNvY2ZwZ2EgKQoKYW5kIGFwcGx5
aW5nIHRoZSBhYm92ZSBwYXRjaCBpIHdhcyBhYmxlIHRvIGtleGVjIGJvb3QgdGhlCjQuOS43Ni1s
dHNpLXJ0IGtlcm5lbCBmcm9tIHRoZSA0LjEuMjIga2VybmVsIGFzIHNob3duIGJlbGxvdwoKcm9v
dEBub2RlMTovbW50L3Rlc3QjdW5hbWUgLWEKTGludXggbm9kZTEgNC4xLjIyLWx0c2ktYWx0ZXJh
ICMyIFNNUCBQUkVFTVBUIE1vbiBKdWwgMjkgMTI6Mzg6MDYgRUVTVAoyMDE5IGFybXY3bCBHTlUv
CgpXZSB0aGVuIGtleGVjIGxvYWQgdGhlIDQuOS43NiBrZXJuZWwKCnJvb3RAbm9kZTE6L21udC90
ZXN0Iy4va2V4ZWMgLWQgIC1jIC1sIHpJbWFnZWJreAotLWR0Yj1zb2NmcGdhX2N5Y2xvbmU1X21p
dHlzb201Y3N4X2RldmtpdC5kdGIKLS1jb21tYW5kLWxpbmU9InJvb3Q9L2Rldi9tbWNibGswcDMg
cm9vdHdhaXQgcncgZWFybHljb24iCgphbmQgdGhlbiBzdGFydCB0aGUga2VybmVsIChzdWNjZXNz
ZnVsbHkhISkgd2l0aAoKcm9vdEBub2RlMTovbW50L3Rlc3QjIGtleGVjIC1kIC1lClsgICA0Ni4z
MDYxMDJdIGtleGVjOiBTdGFydGluZyBuZXcga2VybmVsClsgICA0Ni4zMDk5MjhdIERpc2FibGlu
ZyBub24tYm9vdCBDUFVzIC4uLgpbICAgNDYuMzA2MTAyXSBrZXhlYzogU3RhcnRpbmcgbmV3IGtl
cm5lbApbICAgNDYuMzc4MDUzXSBDUFUxOiBzaHV0ZG93bgpbICAgNDYuMzgxODc1XSBCeWUhClVu
Y29tcHJlc3NpbmcgTGludXguLi4gZG9uZSwgYm9vdGluZyB0aGUga2VybmVsLgpbICAgIDAuMDAw
MDAwXSBCb290aW5nIExpbnV4IG9uIHBoeXNpY2FsIENQVSAweDAKWyAgICAwLjAwMDAwMF0gTGlu
dXggdmVyc2lvbiA0LjkuNzYtcnQ2MS1sdHNpLWFsdGVyYSAoYWdnZWxpc0Bjb3JlaTUpCihnY2Mg
dmVyc2lvbiA0LjguMyAyMDE0MDQwMSAocHJlcmVsZWFzZSkgKGNyb3NzdG9vbC1ORyBsOQpbICAg
IDAuMDAwMDAwXSBDUFU6IEFSTXY3IFByb2Nlc3NvciBbNDEzZmMwOTBdIHJldmlzaW9uIDAgKEFS
TXY3KSwgY3I9MTBjNTM4N2QKWyAgICAwLjAwMDAwMF0gQ1BVOiBQSVBUIC8gVklQVCBub25hbGlh
c2luZyBkYXRhIGNhY2hlLCBWSVBUIGFsaWFzaW5nCmluc3RydWN0aW9uIGNhY2hlClsgICAgMC4w
MDAwMDBdIE9GOiBmZHQ6TWFjaGluZSBtb2RlbDogTWl0eVNPTS01Q1NYIEFsdGVyYSBTT0NGUEdB
IEN5Y2xvbmUgVgpbICAgIDAuMDAwMDAwXSBjbWE6IFJlc2VydmVkIDE2IE1pQiBhdCAweDNmMDAw
MDAwClsgICAgMC4wMDAwMDBdIE1lbW9yeSBwb2xpY3k6IERhdGEgY2FjaGUgd3JpdGVhbGxvYwpb
ICAgIDAuMDAwMDAwXSBwZXJjcHU6IEVtYmVkZGVkIDE1IHBhZ2VzL2NwdSBAZWY2YmYwMDAgczI5
MTg0IHI4MTkyCmQyNDA2NCB1NjE0NDAKWyAgICAwLjAwMDAwMF0gQnVpbHQgMSB6b25lbGlzdHMj
Li9rZXhlYyAtZCAgLWMgLWwgekltYWdlYmt4Ci0tZHRiPXNvY2ZwZ2FfY3ljbG9uZTVfbWl0eXNv
bTVjc3hfZGV2a2l0LmR0YgotLWNvbW1hbmQtbGluZT0icm9vdD0vZGV2L21tY2JsazBwMyByb290
d2FpdCBydyBlYXJseWNvbiIgaW4gWm9uZQpvcmRlciwgbW9iaWxpdHkgZ3JvdXBpbmcgb24uICBU
b3RhbCBwYWdlczogMjYwNDE2ClsgICAgMC4wMDAwMDBdIEtlcm5lbCBjb21tYW5kIGxpbmU6IHJv
b3Q9L2Rldi9tbWNibGswcDMgcm9vdHdhaXQKWyAgICAwLjAwMDAwMF0gUElEIGhhc2ggdGFibGUg
ZW50cmllczogNDA5NiAob3JkZXI6IDIsIDE2Mzg0IGJ5dGVzKQoKLi4uLi4KLi4uLi4KQW5nc3Ry
b20gdjIwMTcuMTIgLSBLZXJuZWwgNC45Ljc2LXJ0NjEtbHRzaS1hbHRlcmEKCm5vZGUxIGxvZ2lu
OgoKCklzIHRoZXJlIHNvbWV0aGluZyBpIGFtIG1pc3Npbmcgb3Iga2V4ZWMgYnJva2UgaW4gbGF0
ZXIgc2VyaWVzIDQKa2VybmVscyBmb3IgYXJtIChzb2NmcGdhKT8KCkFnZ2VsaXMgQWdnZWxpcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
